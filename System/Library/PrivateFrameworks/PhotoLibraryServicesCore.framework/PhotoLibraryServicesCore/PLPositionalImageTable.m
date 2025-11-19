@interface PLPositionalImageTable
- (BOOL)readImageDataAtIndex:(unint64_t)a3 intoBuffer:(void *)a4 bytesRead:(unint64_t *)a5 imageWidth:(int *)a6 imageHeight:(int *)a7 imageDataWidth:(int *)a8 imageDataHeight:(int *)a9 startingOffset:(int64_t *)a10 bytesPerRow:(unint64_t *)a11 uuidBytes:(id *)a12;
- (BOOL)validateData:(id)a3 withToken:(id)a4;
- (BOOL)writeDebugImageAtIndex:(unint64_t)a3 toFileURL:(id)a4;
- (CGImage)createImageWithIdentifier:(id)a3 orIndex:(unint64_t)a4;
- (PLImageTableEntryFooter_s)tableFooterForIndex:(unint64_t)a3;
- (PLPositionalImageTable)initWithPath:(id)a3 readOnly:(BOOL)a4 format:(id)a5;
- (id)_debugDescription;
- (id)debugImageDataAtIndex:(unint64_t)a3;
- (id)imageDataWithIdentifier:(id)a3 orIndex:(unint64_t)a4 width:(int *)a5 height:(int *)a6 bytesPerRow:(int *)a7 dataWidth:(int *)a8 dataHeight:(int *)a9 dataOffset:(int *)a10;
- (void)getImageDataOffset:(int64_t *)a3 size:(CGSize *)a4 bytesPerRow:(unint64_t *)a5 fromEntryFooter:(PLImageTableEntryFooter_s *)a6;
- (void)preheatDataForThumbnailIndexes:(id)a3;
@end

@implementation PLPositionalImageTable

- (PLImageTableEntryFooter_s)tableFooterForIndex:(unint64_t)a3
{
  if (self->super._readOnly)
  {
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  else if (self->super._entryCapacity <= a3)
  {
    return 0;
  }

  v5 = malloc_type_malloc([(PLPositionalTable *)self entryLength], 0x67A8A138uLL);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v12 = 0;
  v7 = [(PLPositionalTable *)self readDataAtIndex:a3 intoBuffer:v5 bytesRead:&v12];
  v8 = 0;
  if (v7)
  {
    v8 = malloc_type_calloc(1uLL, 0x1CuLL, 0x100004027586B93uLL);
    v9 = [(PLPositionalTable *)self entryLength];
    v10 = *&v6[v9 - 16];
    *v8 = *&v6[v9 - 28];
    *(v8 + 12) = v10;
  }

  free(v6);
  return v8;
}

- (BOOL)readImageDataAtIndex:(unint64_t)a3 intoBuffer:(void *)a4 bytesRead:(unint64_t *)a5 imageWidth:(int *)a6 imageHeight:(int *)a7 imageDataWidth:(int *)a8 imageDataHeight:(int *)a9 startingOffset:(int64_t *)a10 bytesPerRow:(unint64_t *)a11 uuidBytes:(id *)a12
{
  v43 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v19 = [(PLPositionalTable *)self readDataAtIndex:a3 intoBuffer:a4 bytesRead:&v37];
  if (v19)
  {
    v20 = a4 + [(PLPositionalTable *)self entryLength];
    v21 = *(v20 - 2);
    if (v21 && (v22 = *(v20 - 3)) != 0 && ((v23 = self->_formatSideLen, v21 <= v23) ? (v24 = v22 > v23) : (v24 = 1), !v24))
    {
      v36 = 0;
      *buf = *MEMORY[0x1E695F060];
      v35 = 0;
      [(PLPositionalImageTable *)self getImageDataOffset:&v36 size:buf bytesPerRow:&v35 fromEntryFooter:v20 - 28];
      if (self->_formatIsCropped)
      {
        formatSideLen = self->_formatSideLen;
        v32 = formatSideLen;
      }

      else
      {
        LODWORD(v29) = *(v20 - 3);
        LODWORD(v30) = *(v20 - 2);
        v32 = v29;
        formatSideLen = v30;
      }

      *a5 = v37;
      *a6 = v32;
      *a7 = formatSideLen;
      v33 = *&buf[8];
      *a8 = *buf;
      *a9 = v33;
      *a10 = v36;
      *a11 = v35;
      if (a12)
      {
        *a12 = *(v20 - 28);
      }

      LOBYTE(v19) = 1;
    }

    else
    {
      v25 = PLThumbnailsGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = self->_formatSideLen;
        v27 = *(v20 - 3);
        v28 = *(v20 - 2);
        *buf = 134218752;
        *&buf[4] = a3;
        *&buf[12] = 1024;
        *&buf[14] = v27;
        v39 = 1024;
        v40 = v28;
        v41 = 1024;
        v42 = v26;
        _os_log_impl(&dword_1AA9BD000, v25, OS_LOG_TYPE_DEBUG, "Footer data invalid at index: %lu (imageHeight: %d, imageWidth: %d), format side len: %d", buf, 0x1Eu);
      }

      LOBYTE(v19) = 0;
    }
  }

  return v19;
}

- (BOOL)writeDebugImageAtIndex:(unint64_t)a3 toFileURL:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(PLPositionalImageTable *)self debugImageDataAtIndex:a3];
  if (v8)
  {
    v9 = [v6 path];
    v10 = [v7 fileExistsAtPath:v9];

    if (v10)
    {
      [v7 removeItemAtURL:v6 error:0];
    }

    v11 = [v8 writeToURL:v6 atomically:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)getImageDataOffset:(int64_t *)a3 size:(CGSize *)a4 bytesPerRow:(unint64_t *)a5 fromEntryFooter:(PLImageTableEntryFooter_s *)a6
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:261 description:@"must be overriden by subclass."];
}

- (id)debugImageDataAtIndex:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:256 description:@"must be overriden by subclass."];

  return 0;
}

- (id)_debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  context = objc_autoreleasePoolPush();
  v4 = [(PLPositionalTable *)self entryCapacity];
  v5 = [(PLPositionalImageTable *)self format];
  v6 = [(PLPositionalTable *)self path];
  [v3 appendFormat:@"\n%p %@ %@, capacity: %ld entries\n", self, v5, v6, v4];

  if (v4 >= 1)
  {
    v7 = 0;
    v8 = @"(Empty)\n";
    do
    {
      v9 = objc_autoreleasePoolPush();
      [v3 appendFormat:@"\t [%u] ", v7];
      if ([(PLPositionalTable *)self isEmptyAtIndex:v7])
      {
        [v3 appendString:v8];
      }

      else
      {
        v10 = malloc_type_malloc([(PLPositionalTable *)self entryLength], 0x277E0837uLL);
        if (v10)
        {
          v11 = v10;
          v23 = 0;
          v24 = 0;
          v21 = 0;
          v22 = 0;
          v19 = 0;
          v20 = 0;
          v18 = 0;
          if ([(PLPositionalImageTable *)self readImageDataAtIndex:v7 intoBuffer:v10 bytesRead:&v23 imageWidth:&v22 + 4 imageHeight:&v22 imageDataWidth:&v21 + 4 imageDataHeight:&v21 startingOffset:&v24 bytesPerRow:&v20 uuidBytes:&v18])
          {
            v12 = v8;
            v13 = [PLUUIDString alloc];
            v14 = [(PLUUIDString *)v13 initWithCFUUIDBytes:v18, v19];
            [v3 appendFormat:@"%@, (%u x %u) { ", v14, HIDWORD(v22), v22];
            if (v23)
            {
              for (i = 0; i < v23; ++i)
              {
                [v3 appendFormat:@"%hhd ", v11[i]];
                if (i > 8)
                {
                  break;
                }
              }
            }

            [v3 appendString:@"}\n"];

            v8 = v12;
          }

          else
          {
            [v3 appendString:@"Read failed\n"];
          }

          free(v11);
        }
      }

      objc_autoreleasePoolPop(v9);
      ++v7;
    }

    while (v7 != v4);
  }

  objc_autoreleasePoolPop(context);

  return v3;
}

- (void)preheatDataForThumbnailIndexes:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PLPositionalImageTable_preheatDataForThumbnailIndexes___block_invoke;
  v3[3] = &unk_1E792FE58;
  v3[4] = self;
  [a3 enumerateRangesUsingBlock:v3];
}

- (BOOL)validateData:(id)a3 withToken:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = a3;
  v7 = a4;
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  v11 = v9 + v10;
  v12 = PLUUIDBytesFromString(v7);
  v14 = v13;

  *uu2 = v12;
  v18 = v14;
  v16 = *(v11 - 28);
  return uuid_compare(&v16, uu2) == 0;
}

- (CGImage)createImageWithIdentifier:(id)a3 orIndex:(unint64_t)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:150 description:@"must be overriden by subclass."];

  return 0;
}

- (id)imageDataWithIdentifier:(id)a3 orIndex:(unint64_t)a4 width:(int *)a5 height:(int *)a6 bytesPerRow:(int *)a7 dataWidth:(int *)a8 dataHeight:(int *)a9 dataOffset:(int *)a10
{
  if (self->super._readOnly)
  {
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }
  }

  else if (self->super._entryCapacity <= a4)
  {
LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  v16 = malloc_type_malloc([(PLPositionalTable *)self entryLength], 0x426A0FD7uLL);
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  if (![(PLPositionalImageTable *)self readImageDataAtIndex:a4 intoBuffer:v16 bytesRead:&v31 imageWidth:&v29 imageHeight:&v28 imageDataWidth:&v27 + 4 imageDataHeight:&v27 startingOffset:&v30 bytesPerRow:&v26 uuidBytes:0])
  {
    free(v17);
    goto LABEL_14;
  }

  v18 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  if (!v18)
  {
    v22 = PLThumbnailsGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1AA9BD000, v22, OS_LOG_TYPE_ERROR, "Failed to calloc buffer for PLPositionalImageTableNSDataReleaseInfo.", buf, 2u);
    }

    goto LABEL_14;
  }

  v19 = v18;
  objc_storeStrong(v18, self);
  v20 = objc_alloc(MEMORY[0x1E695DEF0]);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __115__PLPositionalImageTable_imageDataWithIdentifier_orIndex_width_height_bytesPerRow_dataWidth_dataHeight_dataOffset___block_invoke;
  v25[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
  v25[4] = v19;
  v16 = [v20 initWithBytesNoCopy:v17 length:v31 deallocator:v25];
  if (v16)
  {
    *a5 = v29;
    v21 = HIDWORD(v27);
    *a6 = v28;
    *a8 = v21;
    *a9 = v27;
    *a10 = v30;
    *a7 = v26;
  }

LABEL_15:

  return v16;
}

void __115__PLPositionalImageTable_imageDataWithIdentifier_orIndex_width_height_bytesPerRow_dataWidth_dataHeight_dataOffset___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = *v4;
  *v4 = 0;

  free(a2);
  v6 = *(a1 + 32);

  free(v6);
}

- (PLPositionalImageTable)initWithPath:(id)a3 readOnly:(BOOL)a4 format:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  if (!v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"format"}];
  }

  if (([v10 isTable] & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"format.isTable"}];
  }

  [v10 dimension];
  v12 = v11;
  if (v12 <= 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:77 description:@"format must have non-zero dimension."];
  }

  v13 = [v10 tableFormatBytesPerRowForWidth:v12];
  [v10 size];
  v21.receiver = self;
  v21.super_class = PLPositionalImageTable;
  v15 = [(PLPositionalTable *)&v21 initWithPath:v9 readOnly:v6 entryLength:v13 * v14 + 28];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_format, a5);
    v16->_formatIsCropped = [v10 isCropped];
    v16->_formatSideLen = v12;
    v16->_formatBytesPerPixel = [v10 tableFormatBytesPerPixel];
    v16->_formatMaxBytesPerRow = [v10 tableFormatBytesPerRowForWidth:v12];
  }

  return v16;
}

@end