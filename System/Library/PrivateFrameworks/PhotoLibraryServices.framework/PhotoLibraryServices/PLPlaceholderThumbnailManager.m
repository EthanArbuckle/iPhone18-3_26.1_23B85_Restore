@interface PLPlaceholderThumbnailManager
+ (id)sharedManager;
- (PLPlaceholderThumbnailManager)init;
- (id)_cacheKeyForFormat:(id)a3 photoImageSize:(CGSize)a4 photoImageColor:(id)a5;
- (id)newPlaceholderImageForFormat:(unsigned __int16)a3 photoImageSize:(CGSize)a4;
- (id)placeholderDataForFormat:(unsigned __int16)a3 photoImageSize:(CGSize)a4 width:(int *)a5 height:(int *)a6 bytesPerRow:(int *)a7 dataWidth:(int *)a8 dataHeight:(int *)a9 imageDataOffset:(int *)a10;
@end

@implementation PLPlaceholderThumbnailManager

- (id)newPlaceholderImageForFormat:(unsigned __int16)a3 photoImageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__110502;
  v18 = __Block_byref_object_dispose__110503;
  v19 = 0;
  v6 = [MEMORY[0x1E69BF260] formatWithID:a3];
  v7 = v6;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [v6 size];
  }

  v9 = DCIM_resolvedPlaceholderImageColor();
  v12 = v7;
  v13 = v9;
  pl_dispatch_sync();
  v10 = v15[5];

  _Block_object_dispose(&v14, 8);
  return v10;
}

void __77__PLPlaceholderThumbnailManager_newPlaceholderImageForFormat_photoImageSize___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isThumbnail])
  {
    return;
  }

  v27 = [*(a1 + 40) _cacheKeyForFormat:*(a1 + 32) photoImageSize:*(a1 + 48) photoImageColor:*(a1 + 64), *(a1 + 72)];
  v2 = [*(*(a1 + 40) + 16) objectForKey:v27];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = v27;
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = [*(a1 + 40) _placeholderImageWithColor:*(a1 + 48)];
    DCIM_sizeFromPLImage();
    v8 = v7;
    v10 = v9;
    [*(a1 + 32) size];
    v13 = fmin(v12, v11);
    v14 = v12 > v10;
    if (v11 > v8)
    {
      v14 = 1;
    }

    if (v13 <= 0.0)
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    if (v14)
    {
      v16 = v8;
    }

    else
    {
      v16 = v11;
    }

    v17 = *(a1 + 64) / *(a1 + 72);
    v19 = *MEMORY[0x1E695F058];
    v18 = *(MEMORY[0x1E695F058] + 8);
    v20 = [*(a1 + 32) isCropped];
    if (v17 >= 1.0)
    {
      if (!v20)
      {
        if (v16 >= *(a1 + 64))
        {
          v16 = *(a1 + 64);
        }

        v15 = round(v16 / v17);
        goto LABEL_29;
      }

      if (v15 >= *(a1 + 72))
      {
        v15 = *(a1 + 72);
      }
    }

    else
    {
      if (!v20)
      {
        if (v15 >= *(a1 + 72))
        {
          v15 = *(a1 + 72);
        }

        v16 = round(v17 * v15);
        goto LABEL_29;
      }

      if (v16 >= *(a1 + 64))
      {
        v15 = *(a1 + 64);
      }

      else
      {
        v15 = v16;
      }
    }

    v18 = 0.0;
    v16 = v15;
    v19 = 0.0;
LABEL_29:
    v21 = DCIM_CGImageRefFromPLImage();
    v29.origin.x = v19;
    v29.origin.y = v18;
    v29.size.width = v16;
    v29.size.height = v15;
    v22 = CGImageCreateWithImageInRect(v21, v29);
    DCIM_scaleFromMainScreen();
    v23 = DCIM_newPLImageWithCGImage();
    v24 = *(*(a1 + 56) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    CGImageRelease(v22);
    v26 = *(*(*(a1 + 56) + 8) + 40);
    if (v26)
    {
      [*(*(a1 + 40) + 16) setObject:v26 forKey:v27];
    }

    v5 = v27;
  }
}

- (id)placeholderDataForFormat:(unsigned __int16)a3 photoImageSize:(CGSize)a4 width:(int *)a5 height:(int *)a6 bytesPerRow:(int *)a7 dataWidth:(int *)a8 dataHeight:(int *)a9 imageDataOffset:(int *)a10
{
  v10 = [MEMORY[0x1E69BF260] formatWithID:a3];
  if ([v10 isThumbnail])
  {
    v11 = DCIM_resolvedPlaceholderImageColor();
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__110502;
    v20 = __Block_byref_object_dispose__110503;
    v21 = 0;
    v14 = v10;
    v15 = v11;
    pl_dispatch_sync();
    v12 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __135__PLPlaceholderThumbnailManager_placeholderDataForFormat_photoImageSize_width_height_bytesPerRow_dataWidth_dataHeight_imageDataOffset___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cacheKeyForFormat:*(a1 + 40) photoImageSize:*(a1 + 48) photoImageColor:*(a1 + 64), *(a1 + 72)];
  v3 = [*(*(a1 + 32) + 8) objectForKey:v2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 imageDataWithWidth:*(a1 + 80) height:*(a1 + 88) bytesPerRow:*(a1 + 96) dataWidth:*(a1 + 104) dataHeight:*(a1 + 104) imageDataOffset:*(a1 + 112)];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = [*(a1 + 32) _placeholderImageWithColor:*(a1 + 48)];
    v9 = [*(a1 + 40) thumbnailSpecification];
    v10 = *(MEMORY[0x1E695F058] + 16);
    v37.origin = *MEMORY[0x1E695F058];
    v37.size = v10;
    v36 = 0;
    v35 = 0;
    [PLThumbnailUtilities performSWDownscaleTo5551OnImage:DCIM_CGImageRefFromPLImage() withSpecification:v9 destinationData:&v35 imageRect:&v37 bytesPerRow:&v36];
    v11 = v35;
    v12 = v35;
    [*(a1 + 40) size];
    v14 = v13;
    [*(a1 + 40) size];
    v16 = v15;
    v17 = 0;
    if (([*(a1 + 40) isCropped] & 1) == 0)
    {
      height = v37.size.height;
      v17 = v14 > v37.size.width ? (v14 - v37.size.width + ((v14 - v37.size.width) >> 31)) & 0xFFFFFFFE : 0;
      if (height < v16)
      {
        v17 = v36 * ((v16 - height + 1) / 2);
      }
    }

    v19 = *(a1 + 80);
    if (v19)
    {
      *v19 = v37.size.width;
    }

    v20 = *(a1 + 88);
    if (v20)
    {
      *v20 = v37.size.height;
    }

    v21 = *(a1 + 96);
    if (v21)
    {
      *v21 = v36;
    }

    v22 = *(a1 + 120);
    if (v22)
    {
      *v22 = v14;
    }

    v23 = *(a1 + 104);
    if (v23)
    {
      *v23 = v16;
    }

    v24 = *(a1 + 112);
    if (v24)
    {
      *v24 = v17;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v11);
    if ([*(*(*(a1 + 56) + 8) + 40) length])
    {
      v25 = [_PLPlaceholderThumbnailCachedData alloc];
      HIDWORD(v33) = v16;
      v26 = v9;
      v27 = v8;
      v28 = *(*(*(a1 + 56) + 8) + 40);
      v34 = v12;
      Width = CGRectGetWidth(v37);
      v30 = CGRectGetHeight(v37);
      LODWORD(v33) = v17;
      v31 = v28;
      v8 = v27;
      v9 = v26;
      v32 = [(_PLPlaceholderThumbnailCachedData *)v25 initWithImageData:v31 width:Width height:v30 bytesPerRow:v36 dataWidth:v14 dataHeight:HIDWORD(v33) imageDataOffset:v33];
      [*(*(a1 + 32) + 8) setObject:v32 forKey:v2];

      v12 = v34;
    }
  }
}

- (id)_cacheKeyForFormat:(id)a3 photoImageSize:(CGSize)a4 photoImageColor:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a5;
  v9 = a3;
  v10 = [v9 isCropped];
  v11 = MEMORY[0x1E696AEC0];
  if (v10)
  {
    v12 = [v9 formatID];

    v13 = [v8 hash];
    [v11 stringWithFormat:@"%d~%lu", v12, v13, v18];
  }

  else
  {
    v14 = [v9 formatID];

    v15 = [v8 hash];
    [v11 stringWithFormat:@"%d~%lu_%.4f", v14, v15, width / height];
  }
  v16 = ;

  return v16;
}

- (PLPlaceholderThumbnailManager)init
{
  v10.receiver = self;
  v10.super_class = PLPlaceholderThumbnailManager;
  v2 = [(PLPlaceholderThumbnailManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    placeholderDataCache = v2->_placeholderDataCache;
    v2->_placeholderDataCache = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    placeholderImageCache = v2->_placeholderImageCache;
    v2->_placeholderImageCache = v5;

    v7 = dispatch_queue_create("PLPlaceholderThumbnailManager", 0);
    isolation = v2->_isolation;
    v2->_isolation = v7;
  }

  return v2;
}

+ (id)sharedManager
{
  pl_dispatch_once();
  v2 = sharedManager_sharedManager;

  return v2;
}

void __46__PLPlaceholderThumbnailManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedManager_sharedManager;
  sharedManager_sharedManager = v1;
}

@end