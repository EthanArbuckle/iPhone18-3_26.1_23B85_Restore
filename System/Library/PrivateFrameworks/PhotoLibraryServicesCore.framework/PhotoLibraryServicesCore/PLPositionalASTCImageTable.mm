@interface PLPositionalASTCImageTable
- (CGImage)createImageWithIdentifier:(id)a3 orIndex:(unint64_t)a4;
- (id)debugImageDataAtIndex:(unint64_t)a3;
- (void)getImageDataOffset:(int64_t *)a3 size:(CGSize *)a4 bytesPerRow:(unint64_t *)a5 fromEntryFooter:(PLImageTableEntryFooter_s *)a6;
@end

@implementation PLPositionalASTCImageTable

- (CGImage)createImageWithIdentifier:(id)a3 orIndex:(unint64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->super.super._readOnly)
  {
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  else if (self->super.super._entryCapacity <= a4)
  {
    return 0;
  }

  v25 = 0;
  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v6 = malloc_type_malloc([(PLPositionalTable *)self entryLength], 0xBE46FB72uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [(PLPositionalImageTable *)self readImageDataAtIndex:a4 intoBuffer:v6 bytesRead:&v22 imageWidth:&v26 + 4 imageHeight:&v26 imageDataWidth:&v25 + 4 imageDataHeight:&v25 startingOffset:&v23 bytesPerRow:&v24 uuidBytes:0];
  ImageAtIndex = 0;
  if (v8)
  {
    v10 = HIDWORD(v26) + 6;
    if (SHIDWORD(v26) >= -3)
    {
      v10 = HIDWORD(v26) + 3;
    }

    v11 = v10 >> 2;
    v12 = v26 + 6;
    if (v26 >= -3)
    {
      v12 = v26 + 3;
    }

    v13 = (16 * v11 * (v12 >> 2));
    [(PLPositionalTable *)self entryLength];
    v27 = v13;
    v30 = 0xBB31312058544BABLL;
    v31 = 169478669;
    v32 = xmmword_1AAA8EF70;
    v33 = 0x1908000093B0;
    v34 = HIDWORD(v26);
    v35 = v26;
    v36 = xmmword_1AAA8EF80;
    strcpy(&v38[17], "3");
    strcpy(v38, "ColorSpace_APPLE");
    v38[19] = 0;
    v37 = 0x1300000018;
    v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v13 + 92];
    [v14 appendBytes:&v30 length:88];
    [v14 appendBytes:&v27 length:4];
    [v14 appendBytes:v7 length:v27];
    v15 = CGImageSourceCreateWithData(v14, 0);
    if (v15)
    {
      v16 = v15;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v15, 0, 0);
      if (!ImageAtIndex)
      {
        v17 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v14 length];
          *buf = 134217984;
          v29 = v18;
          _os_log_impl(&dword_1AA9BD000, v17, OS_LOG_TYPE_ERROR, "Unable to decode ASTC KTX data of length: %ld to CGImage", buf, 0xCu);
        }
      }

      CFRelease(v16);
    }

    else
    {
      v19 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v14 length];
        *buf = 134217984;
        v29 = v20;
        _os_log_impl(&dword_1AA9BD000, v19, OS_LOG_TYPE_ERROR, "Unable to open image source for ASTC KTX data of length: %ld", buf, 0xCu);
      }

      ImageAtIndex = 0;
    }
  }

  free(v7);
  return ImageAtIndex;
}

- (id)debugImageDataAtIndex:(unint64_t)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->super.super._readOnly)
  {
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }
  }

  else if (self->super.super._entryCapacity <= a3)
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v5 = malloc_type_malloc([(PLPositionalTable *)self entryLength], 0xDF1AD4F5uLL);
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v7 = [(PLPositionalImageTable *)self readImageDataAtIndex:a3 intoBuffer:v5 bytesRead:&v14 imageWidth:&v18 + 4 imageHeight:&v18 imageDataWidth:&v17 + 4 imageDataHeight:&v17 startingOffset:&v15 bytesPerRow:&v16 uuidBytes:0];
  v8 = 0;
  if (v7)
  {
    v9 = HIDWORD(v18) + 3;
    if (SHIDWORD(v18) < -3)
    {
      v9 = HIDWORD(v18) + 6;
    }

    v10 = v9 >> 2;
    v11 = v18 + 3;
    if (v18 < -3)
    {
      v11 = v18 + 6;
    }

    v13 = (16 * v10 * (v11 >> 2));
    v19 = 0xBB31312058544BABLL;
    v20 = 169478669;
    v21 = xmmword_1AAA8EF70;
    v22 = 0x1908000093B0;
    v23 = HIDWORD(v18);
    v24 = v18;
    v25 = xmmword_1AAA8EF80;
    v28 = 51;
    strcpy(v27, "ColorSpace_APPLE");
    v29 = 0;
    v26 = 0x1300000018;
    v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
    [v8 appendBytes:&v19 length:88];
    [v8 appendBytes:&v13 length:4];
    [v8 appendBytes:v6 length:v13];
  }

  free(v6);
LABEL_14:

  return v8;
}

- (void)getImageDataOffset:(int64_t *)a3 size:(CGSize *)a4 bytesPerRow:(unint64_t *)a5 fromEntryFooter:(PLImageTableEntryFooter_s *)a6
{
  var1 = a6->var1;
  var2 = a6->var2;
  v9 = var1 + 3;
  v8 = var1 < -3;
  v10 = var1 + 6;
  if (!v8)
  {
    v10 = v9;
  }

  v11 = v10 & 0xFFFFFFFC;
  v12 = var2 + 3;
  v8 = var2 < -3;
  v13 = var2 + 6;
  if (!v8)
  {
    v13 = v12;
  }

  *a3 = 0;
  *a5 = 4 * v11;
  a4->width = v11;
  a4->height = (v13 & 0xFFFFFFFC);
}

@end