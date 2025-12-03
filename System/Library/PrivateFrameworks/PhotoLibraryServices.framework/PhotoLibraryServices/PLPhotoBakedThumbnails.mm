@interface PLPhotoBakedThumbnails
+ (BOOL)_transformForImage:(CGImage *)image isCropped:(BOOL)cropped captureOrientation:(int)orientation sizeInOut:(CGSize *)out contextSizeOut:(CGSize *)sizeOut transformOut:(CGAffineTransform *)transformOut;
+ (id)thumbnailsWithContentsOfFile:(id)file format:(unsigned __int16)format;
- (BOOL)saveToFile:(id)file;
- (BOOL)writeBorderedThumbnailOfImage:(CGImage *)image toBuffer:(void *)buffer orientation:(int *)orientation format:(unsigned __int16)format formatInfo:(id *)info delegate:(id)delegate;
- (CGImage)thumbnailImageAtIndex:(int64_t)index;
- (CGRect)imageRect;
- (CGSize)size;
- (NSMutableDictionary)options;
- (PLPhotoBakedThumbnails)initWithContentsOfFile:(id)file format:(unsigned __int16)format readOnly:(BOOL)only;
- (PLPhotoBakedThumbnails)initWithData:(id)data format:(unsigned __int16)format readOnly:(BOOL)only;
- (PLPhotoBakedThumbnails)initWithImages:(id)images format:(unsigned __int16)format options:(id)options delegate:(id)delegate;
- (char)thumbnailBytesAtIndex:(int64_t)index;
- (id)_thumbnailData;
- (id)serializedData;
- (id)thumbnailDataAtIndex:(int64_t)index;
@end

@implementation PLPhotoBakedThumbnails

- (id)_thumbnailData
{
  if (!self->_dataIsMutable)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithData:self->_thumbnailData];
    thumbnailData = self->_thumbnailData;
    self->_thumbnailData = v3;

    self->_dataIsMutable = 1;
  }

  v5 = self->_thumbnailData;

  return v5;
}

- (BOOL)writeBorderedThumbnailOfImage:(CGImage *)image toBuffer:(void *)buffer orientation:(int *)orientation format:(unsigned __int16)format formatInfo:(id *)info delegate:(id)delegate
{
  formatCopy = format;
  delegateCopy = delegate;
  if (image)
  {
    v15 = buffer == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || info == 0;
  v17 = !v16;
  if (!v16)
  {
    if (PLPhotoBakedFormatIsDynamicallySized())
    {
      size = self->_size;
      v39 = size;
      v18 = 0.0;
      height = size.height;
      width = size.width;
      v21 = 0.0;
      v22 = size.height;
      v23 = size.width;
      y = 0.0;
      x = 0.0;
    }

    else
    {
      size = info->var1;
      v39 = size;
      x = info->var2.origin.x;
      y = info->var2.origin.y;
      v23 = info->var2.size.width;
      v22 = info->var2.size.height;
      v21 = info->var3.origin.x;
      v18 = info->var3.origin.y;
      width = info->var3.size.width;
      height = info->var3.size.height;
    }

    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = v23;
    v40.size.height = v22;
    v47.origin.x = v21;
    v47.origin.y = v18;
    v47.size.width = width;
    v47.size.height = height;
    v26 = CGRectEqualToRect(v40, v47);
    v27 = *(MEMORY[0x1E695EFD0] + 16);
    *&v37.a = *MEMORY[0x1E695EFD0];
    *&v37.c = v27;
    *&v37.tx = *(MEMORY[0x1E695EFD0] + 32);
    v28 = [MEMORY[0x1E69BF260] formatWithID:formatCopy];
    if (orientation && [objc_opt_class() _transformForImage:image isCropped:objc_msgSend(v28 captureOrientation:"isCropped") sizeInOut:*orientation contextSizeOut:&v39 transformOut:{&size, &v37}])
    {
      v35 = v37;
      memset(&transform, 0, sizeof(transform));
      CGAffineTransformInvert(&transform, &v35);
      v35 = transform;
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = v23;
      v41.size.height = v22;
      v42 = CGRectApplyAffineTransform(v41, &v35);
      x = v42.origin.x;
      y = v42.origin.y;
      v23 = v42.size.width;
      v22 = v42.size.height;
      v35 = transform;
      v42.origin.x = v21;
      v42.origin.y = v18;
      v42.size.width = width;
      v42.size.height = height;
      v43 = CGRectApplyAffineTransform(v42, &v35);
      v21 = v43.origin.x;
      v18 = v43.origin.y;
      width = v43.size.width;
      height = v43.size.height;
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v30 = CGBitmapContextCreate(buffer, size.width, size.height, info->var5, (size.width * info->var6), DeviceRGB, info->var4);
    v31 = v30;
    if (orientation)
    {
      transform = v37;
      CGContextConcatCTM(v30, &transform);
    }

    v32 = CGColorCreate(DeviceRGB, info->var7);
    v33 = CGColorCreate(DeviceRGB, info->var8);
    CGContextSetFillColorWithColor(v31, v32);
    if (!v26)
    {
      CGContextSetStrokeColorWithColor(v31, v33);
    }

    v44.size = v39;
    v44.origin.x = 0.0;
    v44.origin.y = 0.0;
    CGContextFillRect(v31, v44);
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = v23;
    v45.size.height = v22;
    CGContextDrawImage(v31, v45, image);
    if (!v26)
    {
      v46.origin.x = v21;
      v46.origin.y = v18;
      v46.size.width = width;
      v46.size.height = height;
      CGContextStrokeRect(v31, v46);
    }

    CGColorRelease(v33);
    CGColorRelease(v32);
    if (delegateCopy)
    {
      [delegateCopy decorateThumbnail:self inContext:v31];
    }

    CGContextRelease(v31);
    CGColorSpaceRelease(DeviceRGB);
  }

  return v17;
}

- (CGRect)imageRect
{
  v2 = PLPhotoBakedFormatInfoForFormat();
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)size
{
  if (PLPhotoBakedFormatIsDynamicallySized())
  {
    p_size = &self->_size;
    p_height = &self->_size.height;
  }

  else
  {
    v5 = PLPhotoBakedFormatInfoForFormat();
    p_size = (v5 + 8);
    p_height = (v5 + 16);
  }

  v6 = *p_height;
  width = p_size->width;
  result.height = v6;
  result.width = width;
  return result;
}

- (NSMutableDictionary)options
{
  options = self->_options;
  if (!options)
  {
    v4 = MEMORY[0x1E696ACD0];
    optionsData = self->_optionsData;
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 pl_safeUnarchiveObjectFromData:optionsData classes:v9];
    v11 = [v10 mutableCopy];
    v12 = self->_options;
    self->_options = v11;

    options = self->_options;
  }

  self->_optionsAccessed = 1;

  return options;
}

- (CGImage)thumbnailImageAtIndex:(int64_t)index
{
  if (self->_thumbnailImages)
  {
    count = self->_count;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:self->_count];
    thumbnailImages = self->_thumbnailImages;
    self->_thumbnailImages = v6;

    if (!self->_count)
    {
      return 0;
    }

    v8 = 0;
    do
    {
      v9 = self->_thumbnailImages;
      null = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v9 addObject:null];

      ++v8;
      count = self->_count;
    }

    while (count > v8);
  }

  if (count <= index)
  {
    return 0;
  }

  v11 = [(NSMutableArray *)self->_thumbnailImages objectAtIndex:index];
  null2 = [MEMORY[0x1E695DFB0] null];

  if (v11 == null2)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v14 = [(PLPhotoBakedThumbnails *)self thumbnailDataAtIndex:index];
    v15 = v14;
    if (v14)
    {
      v16 = CGDataProviderCreateWithCFData(v14);
      [(PLPhotoBakedThumbnails *)self size];
      width = v17;
      [(PLPhotoBakedThumbnails *)self size];
      v19 = v18;
      bitsPerComponent = [(PLPhotoBakedThumbnails *)self bitsPerComponent];
      v21 = 8 * [(PLPhotoBakedThumbnails *)self bytesPerPixel];
      bytesPerPixel = [(PLPhotoBakedThumbnails *)self bytesPerPixel];
      [(PLPhotoBakedThumbnails *)self size];
      v24 = CGImageCreate(width, v19, bitsPerComponent, v21, (v23 * bytesPerPixel), DeviceRGB, [(PLPhotoBakedThumbnails *)self bitmapInfo], v16, 0, 0, kCGRenderingIntentDefault);

      CGDataProviderRelease(v16);
      if (v24)
      {
        [(NSMutableArray *)self->_thumbnailImages replaceObjectAtIndex:index withObject:v24];
        v11 = v24;
      }

      else
      {
        v11 = 0;
      }
    }

    CGColorSpaceRelease(DeviceRGB);
  }

  return v11;
}

- (char)thumbnailBytesAtIndex:(int64_t)index
{
  if (self->_singleThumbnailImageLength < 1)
  {
    return 0;
  }

  v13 = v5;
  v14 = v4;
  v15 = v3;
  if (self->_count <= index)
  {
    return 0;
  }

  if (self->_missingHeader)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    LODWORD(v11) = 16;
  }

  if (PLPhotoBakedFormatIsDynamicallySized())
  {
    v11 = v11 | 8;
  }

  else
  {
    v11 = v11;
  }

  return ([(NSData *)self->_thumbnailData bytes:v6]+ v11 + self->_singleThumbnailImageLength * index);
}

- (id)thumbnailDataAtIndex:(int64_t)index
{
  v4 = [(PLPhotoBakedThumbnails *)self thumbnailBytesAtIndex:index];
  if (v4)
  {
    v5 = v4;
    v6 = self->_thumbnailData;
    v10.version = 0;
    memset(&v10.retain, 0, 40);
    v10.info = v6;
    v10.deallocate = releaseThumbnailData;
    v10.preferredSize = 0;
    v7 = CFAllocatorCreate(0, &v10);
    v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v5, self->_singleThumbnailImageLength, v7);
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)saveToFile:(id)file
{
  fileCopy = file;
  serializedData = [(PLPhotoBakedThumbnails *)self serializedData];
  v6 = serializedData;
  if (serializedData)
  {
    v7 = [serializedData writeToFile:fileCopy options:1073741825 error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serializedData
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_count)
  {
    if (self->_optionsAccessed)
    {
      options = self->_options;
      v15 = 0;
      v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:options requiringSecureCoding:1 error:&v15];
      v5 = v15;
      if (!v4)
      {
        v6 = PLBackendGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v5;
          _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Failed to archive options, error: %@", buf, 0xCu);
        }
      }

      count = self->_count;
      singleThumbnailImageLength = self->_singleThumbnailImageLength;
      IsDynamicallySized = PLPhotoBakedFormatIsDynamicallySized();
      v10 = 16;
      if (IsDynamicallySized)
      {
        v10 = 24;
      }

      v11 = v10 + count * singleThumbnailImageLength;
      _thumbnailData = [(PLPhotoBakedThumbnails *)self _thumbnailData];
      [_thumbnailData replaceBytesInRange:v11 withBytes:objc_msgSend(_thumbnailData length:{"length") - v11, objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length")}];
      self->_optionsAccessed = 0;
    }

    v13 = self->_thumbnailData;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (PLPhotoBakedThumbnails)initWithImages:(id)images format:(unsigned __int16)format options:(id)options delegate:(id)delegate
{
  formatCopy = format;
  v69 = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  optionsCopy = options;
  delegateCopy = delegate;
  v65.receiver = self;
  v65.super_class = PLPhotoBakedThumbnails;
  v14 = [(PLPhotoBakedThumbnails *)&v65 init];
  v15 = v14;
  if (!v14)
  {
LABEL_38:
    v19 = v15;
    goto LABEL_39;
  }

  v14->_format = formatCopy;
  v14->_count = [imagesCopy count];
  v16 = PLPhotoBakedFormatInfoForFormat();
  count = v15->_count;
  if (count)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v20 = v16;
    v21 = *(v16 + 168);
    if (v21)
    {
      v57 = 16;
      singleThumbnailImageLength = *(v16 + 168);
    }

    else
    {
      if (count != 1)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:v15 file:@"PLPhotoBakedThumbnails.m" lineNumber:196 description:@"Tried to serialize multiple images into baked thumbnail with dynamic size"];
      }

      v23 = [imagesCopy objectAtIndex:0];
      Width = CGImageGetWidth(v23);
      Height = CGImageGetHeight(v23);
      v26 = Width / Height;
      if (v26 <= 1.0)
      {
        v29 = *(v20 + 16);
        v30 = v26 * v29;
        v27 = roundf(v30);
      }

      else
      {
        v27 = *(v20 + 8);
        v28 = Height / Width * v27;
        v29 = roundf(v28);
      }

      v31 = *(v20 + 96);
      v15->_size.width = v27;
      v15->_size.height = v29;
      singleThumbnailImageLength = (v29 * v31 * v27);
      v57 = 24;
    }

    v15->_singleThumbnailImageLength = singleThumbnailImageLength;
    if (optionsCopy)
    {
      v32 = [optionsCopy mutableCopy];
      options = v15->_options;
      v15->_options = v32;

      v34 = v15->_options;
      v64 = 0;
      v35 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v34 requiringSecureCoding:1 error:&v64];
      v36 = v64;
      if (!v35)
      {
        v37 = PLBackendGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v68 = v36;
          _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Failed to archive options, error: %@", buf, 0xCu);
        }
      }

      v38 = [v35 length];

      singleThumbnailImageLength = v15->_singleThumbnailImageLength;
    }

    else
    {
      v38 = 0;
      v35 = 0;
    }

    v58 = v35;
    v59 = optionsCopy;
    v39 = v57 + v15->_count * singleThumbnailImageLength;
    v15->_dataIsMutable = 1;
    v56 = v38;
    v40 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v39 + v38];
    thumbnailData = v15->_thumbnailData;
    v15->_thumbnailData = v40;

    bytes = [(NSData *)v15->_thumbnailData bytes];
    v43 = bytes;
    *bytes = -1160913749;
    *(bytes + 4) = bswap32(formatCopy);
    *(bytes + 10) = 0;
    *(bytes + 11) = v21 == 0;
    *(bytes + 8) = bswap32(LOWORD(v15->_count)) >> 16;
    v55 = v39;
    v44 = bswap32(v39);
    if (v15->_options)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    *(bytes + 12) = v45;
    if (!v21)
    {
      *([(NSData *)v15->_thumbnailData bytes]+ 16) = vrev32_s8(vmovn_s64(vcvtq_u64_f64(v15->_size)));
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v46 = imagesCopy;
    v47 = [v46 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = v43 + v57;
      v50 = *v61;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v61 != v50)
          {
            objc_enumerationMutation(v46);
          }

          [(PLPhotoBakedThumbnails *)v15 writeBorderedThumbnailOfImage:*(*(&v60 + 1) + 8 * i) toBuffer:v49 orientation:0 format:formatCopy formatInfo:v20 delegate:delegateCopy];
          v49 += v15->_singleThumbnailImageLength;
        }

        v48 = [v46 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v48);
    }

    if (v56)
    {
      _thumbnailData = [(PLPhotoBakedThumbnails *)v15 _thumbnailData];
      [_thumbnailData replaceBytesInRange:v55 withBytes:v56 length:{objc_msgSend(v58, "bytes"), v56}];
    }

    optionsCopy = v59;
    goto LABEL_38;
  }

  v19 = 0;
LABEL_39:

  return v19;
}

- (PLPhotoBakedThumbnails)initWithContentsOfFile:(id)file format:(unsigned __int16)format readOnly:(BOOL)only
{
  onlyCopy = only;
  formatCopy = format;
  fileCopy = file;
  if (fileCopy)
  {
    if (onlyCopy)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:fileCopy options:8 error:0];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithContentsOfFile:fileCopy];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PLPhotoBakedThumbnails *)self initWithData:v10 format:formatCopy readOnly:onlyCopy];

  return v11;
}

- (PLPhotoBakedThumbnails)initWithData:(id)data format:(unsigned __int16)format readOnly:(BOOL)only
{
  formatCopy = format;
  dataCopy = data;
  v31.receiver = self;
  v31.super_class = PLPhotoBakedThumbnails;
  v10 = [(PLPhotoBakedThumbnails *)&v31 init];
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = PLPhotoBakedFormatInfoForFormat();
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  *(v10 + 4) = formatCopy;
  v10[24] = !only;
  objc_storeStrong(v10 + 4, data);
  v13 = [*(v10 + 4) length];
  v14 = *(v10 + 4);
  if (!v14 || v13 < 0x10)
  {
    goto LABEL_17;
  }

  bytes = [v14 bytes];
  if (!bytes)
  {
    goto LABEL_17;
  }

  v17 = bytes->u32[1];
  v18 = bytes[1].u16[0];
  v19 = bytes[1].u32[1];
  if (bytes->i32[0] != -1160913749)
  {
    if (bytes->i32[0] != -1411592774)
    {
LABEL_17:
      v25 = 0;
      goto LABEL_18;
    }

    v17 = bswap32(v17);
    v18 = __rev16(v18);
    v19 = bswap32(v19);
  }

  if (bswap32(v17) != formatCopy)
  {
    goto LABEL_17;
  }

  if (bytes[1].i8[3])
  {
    v23 = vrev32_s8(bytes[2]);
    v24.i64[0] = v23.i32[0];
    v24.i64[1] = v23.i32[1];
    *(v10 + 72) = vcvtq_f64_s64(v24);
    v21 = vmul_lane_s32(v23, v23, 1).u32[0] * *(v12 + 96);
    v22 = 24;
    v20 = 1;
  }

  else
  {
    v20 = __rev16(v18);
    v21 = *(v12 + 168);
    v22 = 16;
  }

  *(v10 + 2) = v20;
  *(v10 + 3) = v21;
  if (v13 < v22 + v20 * v21)
  {
    goto LABEL_17;
  }

  v27 = bswap32(v19);
  if (v19)
  {
    v28 = v13 <= v27;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v29 = [MEMORY[0x1E695DEF0] dataWithBytes:&bytes->i8[v27] length:v13 - v27];
    v30 = *(v10 + 7);
    *(v10 + 7) = v29;
  }

  v25 = v10;
LABEL_18:

  return v25;
}

+ (BOOL)_transformForImage:(CGImage *)image isCropped:(BOOL)cropped captureOrientation:(int)orientation sizeInOut:(CGSize *)out contextSizeOut:(CGSize *)sizeOut transformOut:(CGAffineTransform *)transformOut
{
  if (!transformOut)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoBakedThumbnails.m" lineNumber:481 description:{@"Invalid parameter not satisfying: %@", @"transform"}];

    return 0;
  }

  result = 0;
  if (out && sizeOut)
  {
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    if (!cropped)
    {
      if (Width <= Height)
      {
        out->width = floor(out->height * (Width / Height));
      }

      else
      {
        out->height = floor(out->width * (Height / Width));
      }

      *sizeOut = *out;
    }

    v17 = MEMORY[0x1E695EFD0];
    v19 = *MEMORY[0x1E695EFD0];
    v18 = *(MEMORY[0x1E695EFD0] + 16);
    *&transformOut->a = *MEMORY[0x1E695EFD0];
    *&transformOut->c = v18;
    v20 = *(v17 + 32);
    *&transformOut->tx = v20;
    switch(orientation)
    {
      case 2:
        *&v35.a = v19;
        *&v35.c = v18;
        *&v35.tx = v20;
        CGAffineTransformRotate(&v36, &v35, 1.57079633);
        v25 = *&v36.c;
        *&transformOut->a = *&v36.a;
        *&transformOut->c = v25;
        *&transformOut->tx = *&v36.tx;
        v26 = -out->height;
        v27 = *&transformOut->c;
        *&v35.a = *&transformOut->a;
        *&v35.c = v27;
        *&v35.tx = *&transformOut->tx;
        v28 = 0.0;
        break;
      case 3:
        return 1;
      case 4:
        *&v35.a = v19;
        *&v35.c = v18;
        *&v35.tx = v20;
        CGAffineTransformRotate(&v36, &v35, 3.14159265);
        v21 = *&v36.c;
        *&transformOut->a = *&v36.a;
        *&transformOut->c = v21;
        *&transformOut->tx = *&v36.tx;
        v22 = -out->width;
        *&v21 = -out->height;
        v23 = *&transformOut->c;
        *&v35.a = *&transformOut->a;
        *&v35.c = v23;
        *&v35.tx = *&transformOut->tx;
        CGAffineTransformTranslate(&v36, &v35, v22, *&v21);
        v24 = *&v36.c;
        *&transformOut->a = *&v36.a;
        *&transformOut->c = v24;
        *&transformOut->tx = *&v36.tx;
        return 1;
      default:
        *&v35.a = v19;
        *&v35.c = v18;
        *&v35.tx = v20;
        CGAffineTransformRotate(&v36, &v35, -1.57079633);
        v29 = *&v36.c;
        *&transformOut->a = *&v36.a;
        *&transformOut->c = v29;
        *&transformOut->tx = *&v36.tx;
        v28 = -out->width;
        v30 = *&transformOut->c;
        *&v35.a = *&transformOut->a;
        *&v35.c = v30;
        *&v35.tx = *&transformOut->tx;
        v26 = 0.0;
        break;
    }

    CGAffineTransformTranslate(&v36, &v35, v28, v26);
    v31 = *&v36.c;
    *&transformOut->a = *&v36.a;
    *&transformOut->c = v31;
    *&transformOut->tx = *&v36.tx;
    *sizeOut = vextq_s8(*out, *out, 8uLL);
    return 1;
  }

  return result;
}

+ (id)thumbnailsWithContentsOfFile:(id)file format:(unsigned __int16)format
{
  formatCopy = format;
  fileCopy = file;
  v6 = [[PLPhotoBakedThumbnails alloc] initWithContentsOfFile:fileCopy format:formatCopy readOnly:0];

  return v6;
}

@end