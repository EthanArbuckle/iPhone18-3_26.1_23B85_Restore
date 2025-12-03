@interface PLPositionalImageTable
- (BOOL)readImageDataAtIndex:(unint64_t)index intoBuffer:(void *)buffer bytesRead:(unint64_t *)read imageWidth:(int *)width imageHeight:(int *)height imageDataWidth:(int *)dataWidth imageDataHeight:(int *)dataHeight startingOffset:(int64_t *)self0 bytesPerRow:(unint64_t *)self1 uuidBytes:(id *)self2;
- (BOOL)validateData:(id)data withToken:(id)token;
- (BOOL)writeDebugImageAtIndex:(unint64_t)index toFileURL:(id)l;
- (CGImage)createImageWithIdentifier:(id)identifier orIndex:(unint64_t)index;
- (PLImageTableEntryFooter_s)tableFooterForIndex:(unint64_t)index;
- (PLPositionalImageTable)initWithPath:(id)path readOnly:(BOOL)only format:(id)format;
- (id)_debugDescription;
- (id)debugImageDataAtIndex:(unint64_t)index;
- (id)imageDataWithIdentifier:(id)identifier orIndex:(unint64_t)index width:(int *)width height:(int *)height bytesPerRow:(int *)row dataWidth:(int *)dataWidth dataHeight:(int *)dataHeight dataOffset:(int *)self0;
- (void)getImageDataOffset:(int64_t *)offset size:(CGSize *)size bytesPerRow:(unint64_t *)row fromEntryFooter:(PLImageTableEntryFooter_s *)footer;
- (void)preheatDataForThumbnailIndexes:(id)indexes;
@end

@implementation PLPositionalImageTable

- (PLImageTableEntryFooter_s)tableFooterForIndex:(unint64_t)index
{
  if (self->super._readOnly)
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }
  }

  else if (self->super._entryCapacity <= index)
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
  v7 = [(PLPositionalTable *)self readDataAtIndex:index intoBuffer:v5 bytesRead:&v12];
  v8 = 0;
  if (v7)
  {
    v8 = malloc_type_calloc(1uLL, 0x1CuLL, 0x100004027586B93uLL);
    entryLength = [(PLPositionalTable *)self entryLength];
    v10 = *&v6[entryLength - 16];
    *v8 = *&v6[entryLength - 28];
    *(v8 + 12) = v10;
  }

  free(v6);
  return v8;
}

- (BOOL)readImageDataAtIndex:(unint64_t)index intoBuffer:(void *)buffer bytesRead:(unint64_t *)read imageWidth:(int *)width imageHeight:(int *)height imageDataWidth:(int *)dataWidth imageDataHeight:(int *)dataHeight startingOffset:(int64_t *)self0 bytesPerRow:(unint64_t *)self1 uuidBytes:(id *)self2
{
  v43 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v19 = [(PLPositionalTable *)self readDataAtIndex:index intoBuffer:buffer bytesRead:&v37];
  if (v19)
  {
    v20 = buffer + [(PLPositionalTable *)self entryLength];
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

      *read = v37;
      *width = v32;
      *height = formatSideLen;
      v33 = *&buf[8];
      *dataWidth = *buf;
      *dataHeight = v33;
      *offset = v36;
      *row = v35;
      if (bytes)
      {
        *bytes = *(v20 - 28);
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
        *&buf[4] = index;
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

- (BOOL)writeDebugImageAtIndex:(unint64_t)index toFileURL:(id)l
{
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [(PLPositionalImageTable *)self debugImageDataAtIndex:index];
  if (v8)
  {
    path = [lCopy path];
    v10 = [defaultManager fileExistsAtPath:path];

    if (v10)
    {
      [defaultManager removeItemAtURL:lCopy error:0];
    }

    v11 = [v8 writeToURL:lCopy atomically:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)getImageDataOffset:(int64_t *)offset size:(CGSize *)size bytesPerRow:(unint64_t *)row fromEntryFooter:(PLImageTableEntryFooter_s *)footer
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:261 description:@"must be overriden by subclass."];
}

- (id)debugImageDataAtIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:256 description:@"must be overriden by subclass."];

  return 0;
}

- (id)_debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  context = objc_autoreleasePoolPush();
  entryCapacity = [(PLPositionalTable *)self entryCapacity];
  format = [(PLPositionalImageTable *)self format];
  path = [(PLPositionalTable *)self path];
  [v3 appendFormat:@"\n%p %@ %@, capacity: %ld entries\n", self, format, path, entryCapacity];

  if (entryCapacity >= 1)
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

    while (v7 != entryCapacity);
  }

  objc_autoreleasePoolPop(context);

  return v3;
}

- (void)preheatDataForThumbnailIndexes:(id)indexes
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__PLPositionalImageTable_preheatDataForThumbnailIndexes___block_invoke;
  v3[3] = &unk_1E792FE58;
  v3[4] = self;
  [indexes enumerateRangesUsingBlock:v3];
}

- (BOOL)validateData:(id)data withToken:(id)token
{
  if (!data)
  {
    return 0;
  }

  dataCopy = data;
  tokenCopy = token;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v10 = [dataCopy2 length];

  v11 = bytes + v10;
  v12 = PLUUIDBytesFromString(tokenCopy);
  v14 = v13;

  *uu2 = v12;
  v18 = v14;
  v16 = *(v11 - 28);
  return uuid_compare(&v16, uu2) == 0;
}

- (CGImage)createImageWithIdentifier:(id)identifier orIndex:(unint64_t)index
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:150 description:@"must be overriden by subclass."];

  return 0;
}

- (id)imageDataWithIdentifier:(id)identifier orIndex:(unint64_t)index width:(int *)width height:(int *)height bytesPerRow:(int *)row dataWidth:(int *)dataWidth dataHeight:(int *)dataHeight dataOffset:(int *)self0
{
  if (self->super._readOnly)
  {
    if (index == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_14;
    }
  }

  else if (self->super._entryCapacity <= index)
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
  if (![(PLPositionalImageTable *)self readImageDataAtIndex:index intoBuffer:v16 bytesRead:&v31 imageWidth:&v29 imageHeight:&v28 imageDataWidth:&v27 + 4 imageDataHeight:&v27 startingOffset:&v30 bytesPerRow:&v26 uuidBytes:0])
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
    *width = v29;
    v21 = HIDWORD(v27);
    *height = v28;
    *dataWidth = v21;
    *dataHeight = v27;
    *offset = v30;
    *row = v26;
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

- (PLPositionalImageTable)initWithPath:(id)path readOnly:(BOOL)only format:(id)format
{
  onlyCopy = only;
  pathCopy = path;
  formatCopy = format;
  if (!formatCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"format"}];
  }

  if (([formatCopy isTable] & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"format.isTable"}];
  }

  [formatCopy dimension];
  v12 = v11;
  if (v12 <= 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLPositionalImageTable.m" lineNumber:77 description:@"format must have non-zero dimension."];
  }

  v13 = [formatCopy tableFormatBytesPerRowForWidth:v12];
  [formatCopy size];
  v21.receiver = self;
  v21.super_class = PLPositionalImageTable;
  v15 = [(PLPositionalTable *)&v21 initWithPath:pathCopy readOnly:onlyCopy entryLength:v13 * v14 + 28];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_format, format);
    v16->_formatIsCropped = [formatCopy isCropped];
    v16->_formatSideLen = v12;
    v16->_formatBytesPerPixel = [formatCopy tableFormatBytesPerPixel];
    v16->_formatMaxBytesPerRow = [formatCopy tableFormatBytesPerRowForWidth:v12];
  }

  return v16;
}

@end