@interface PLPositionalBC7ImageTable
- (CGImage)createImageWithIdentifier:(id)a3 orIndex:(unint64_t)a4;
- (id)debugImageDataAtIndex:(unint64_t)a3;
- (void)getImageDataOffset:(int64_t *)a3 size:(CGSize *)a4 bytesPerRow:(unint64_t *)a5 fromEntryFooter:(PLImageTableEntryFooter_s *)a6;
@end

@implementation PLPositionalBC7ImageTable

- (CGImage)createImageWithIdentifier:(id)a3 orIndex:(unint64_t)a4
{
  v42 = *MEMORY[0x1E69E9840];
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

  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v6 = malloc_type_malloc([(PLPositionalTable *)self entryLength], 0x44EEB216uLL);
  if (!v6)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1AA9BD000, v20, OS_LOG_TYPE_ERROR, "createImageWithIdentifier: cannot allocate.", buf, 2u);
    }

    return 0;
  }

  v7 = v6;
  v8 = 0;
  if ([(PLPositionalImageTable *)self readImageDataAtIndex:a4 intoBuffer:v6 bytesRead:&v26 imageWidth:&v30 + 4 imageHeight:&v30 imageDataWidth:&v29 + 4 imageDataHeight:&v29 startingOffset:&v27 bytesPerRow:&v28 uuidBytes:0])
  {
    v9 = HIDWORD(v30) + 6;
    if (SHIDWORD(v30) >= -3)
    {
      v9 = HIDWORD(v30) + 3;
    }

    v10 = v9 >> 2;
    v11 = v30 + 6;
    if (v30 >= -3)
    {
      v11 = v30 + 3;
    }

    v12 = (16 * v10 * (v11 >> 2));
    [(PLPositionalTable *)self entryLength];
    v31 = v12;
    *buf = 0xBB31312058544BABLL;
    v35 = 169478669;
    v36 = xmmword_1AAA8EF90;
    v37 = 0x190800008E8DLL;
    v38 = HIDWORD(v30);
    v39 = v30;
    v40 = xmmword_1AAA8EF80;
    v41 = 0;
    v13 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v12 + 68];
    [v13 appendBytes:buf length:64];
    [v13 appendBytes:&v31 length:4];
    [v13 appendBytes:v7 length:v31];
    v14 = CGImageSourceCreateWithData(v13, 0);
    if (v14)
    {
      v15 = v14;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v14, 0, 0);
      if (ImageAtIndex)
      {
        v8 = ImageAtIndex;
        v17 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
        CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v8, v17);
        if (CopyWithColorSpace)
        {
          v19 = CopyWithColorSpace;
          CGImageRelease(v8);
          v8 = v19;
        }

        CGColorSpaceRelease(v17);
      }

      else
      {
        v24 = PLThumbnailsGetLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = [v13 length];
          *v32 = 134217984;
          v33 = v25;
          _os_log_impl(&dword_1AA9BD000, v24, OS_LOG_TYPE_ERROR, "Unable to decode BC7 KTX data of length: %ld to CGImage", v32, 0xCu);
        }

        v8 = 0;
      }

      CFRelease(v15);
    }

    else
    {
      v22 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v13 length];
        *v32 = 134217984;
        v33 = v23;
        _os_log_impl(&dword_1AA9BD000, v22, OS_LOG_TYPE_ERROR, "Unable to open image source for BC7 KTX data of length: %ld", v32, 0xCu);
      }

      v8 = 0;
    }

    free(v7);
  }

  return v8;
}

- (id)debugImageDataAtIndex:(unint64_t)a3
{
  v27 = *MEMORY[0x1E69E9840];
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
  v5 = malloc_type_malloc([(PLPositionalTable *)self entryLength], 0x7DD1BBEFuLL);
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
    v21 = xmmword_1AAA8EF90;
    v22 = 0x190800008E8DLL;
    v23 = HIDWORD(v18);
    v24 = v18;
    v25 = xmmword_1AAA8EF80;
    v26 = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF88]);
    [v8 appendBytes:&v19 length:64];
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