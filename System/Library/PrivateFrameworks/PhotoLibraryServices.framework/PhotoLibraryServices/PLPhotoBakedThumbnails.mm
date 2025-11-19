@interface PLPhotoBakedThumbnails
+ (BOOL)_transformForImage:(CGImage *)a3 isCropped:(BOOL)a4 captureOrientation:(int)a5 sizeInOut:(CGSize *)a6 contextSizeOut:(CGSize *)a7 transformOut:(CGAffineTransform *)a8;
+ (id)thumbnailsWithContentsOfFile:(id)a3 format:(unsigned __int16)a4;
- (BOOL)saveToFile:(id)a3;
- (BOOL)writeBorderedThumbnailOfImage:(CGImage *)a3 toBuffer:(void *)a4 orientation:(int *)a5 format:(unsigned __int16)a6 formatInfo:(id *)a7 delegate:(id)a8;
- (CGImage)thumbnailImageAtIndex:(int64_t)a3;
- (CGRect)imageRect;
- (CGSize)size;
- (NSMutableDictionary)options;
- (PLPhotoBakedThumbnails)initWithContentsOfFile:(id)a3 format:(unsigned __int16)a4 readOnly:(BOOL)a5;
- (PLPhotoBakedThumbnails)initWithData:(id)a3 format:(unsigned __int16)a4 readOnly:(BOOL)a5;
- (PLPhotoBakedThumbnails)initWithImages:(id)a3 format:(unsigned __int16)a4 options:(id)a5 delegate:(id)a6;
- (char)thumbnailBytesAtIndex:(int64_t)a3;
- (id)_thumbnailData;
- (id)serializedData;
- (id)thumbnailDataAtIndex:(int64_t)a3;
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

- (BOOL)writeBorderedThumbnailOfImage:(CGImage *)a3 toBuffer:(void *)a4 orientation:(int *)a5 format:(unsigned __int16)a6 formatInfo:(id *)a7 delegate:(id)a8
{
  v9 = a6;
  v14 = a8;
  if (a3)
  {
    v15 = a4 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15 || a7 == 0;
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
      size = a7->var1;
      v39 = size;
      x = a7->var2.origin.x;
      y = a7->var2.origin.y;
      v23 = a7->var2.size.width;
      v22 = a7->var2.size.height;
      v21 = a7->var3.origin.x;
      v18 = a7->var3.origin.y;
      width = a7->var3.size.width;
      height = a7->var3.size.height;
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
    v28 = [MEMORY[0x1E69BF260] formatWithID:v9];
    if (a5 && [objc_opt_class() _transformForImage:a3 isCropped:objc_msgSend(v28 captureOrientation:"isCropped") sizeInOut:*a5 contextSizeOut:&v39 transformOut:{&size, &v37}])
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
    v30 = CGBitmapContextCreate(a4, size.width, size.height, a7->var5, (size.width * a7->var6), DeviceRGB, a7->var4);
    v31 = v30;
    if (a5)
    {
      transform = v37;
      CGContextConcatCTM(v30, &transform);
    }

    v32 = CGColorCreate(DeviceRGB, a7->var7);
    v33 = CGColorCreate(DeviceRGB, a7->var8);
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
    CGContextDrawImage(v31, v45, a3);
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
    if (v14)
    {
      [v14 decorateThumbnail:self inContext:v31];
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

- (CGImage)thumbnailImageAtIndex:(int64_t)a3
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
      v10 = [MEMORY[0x1E695DFB0] null];
      [(NSMutableArray *)v9 addObject:v10];

      ++v8;
      count = self->_count;
    }

    while (count > v8);
  }

  if (count <= a3)
  {
    return 0;
  }

  v11 = [(NSMutableArray *)self->_thumbnailImages objectAtIndex:a3];
  v12 = [MEMORY[0x1E695DFB0] null];

  if (v11 == v12)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v14 = [(PLPhotoBakedThumbnails *)self thumbnailDataAtIndex:a3];
    v15 = v14;
    if (v14)
    {
      v16 = CGDataProviderCreateWithCFData(v14);
      [(PLPhotoBakedThumbnails *)self size];
      width = v17;
      [(PLPhotoBakedThumbnails *)self size];
      v19 = v18;
      v20 = [(PLPhotoBakedThumbnails *)self bitsPerComponent];
      v21 = 8 * [(PLPhotoBakedThumbnails *)self bytesPerPixel];
      v22 = [(PLPhotoBakedThumbnails *)self bytesPerPixel];
      [(PLPhotoBakedThumbnails *)self size];
      v24 = CGImageCreate(width, v19, v20, v21, (v23 * v22), DeviceRGB, [(PLPhotoBakedThumbnails *)self bitmapInfo], v16, 0, 0, kCGRenderingIntentDefault);

      CGDataProviderRelease(v16);
      if (v24)
      {
        [(NSMutableArray *)self->_thumbnailImages replaceObjectAtIndex:a3 withObject:v24];
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

- (char)thumbnailBytesAtIndex:(int64_t)a3
{
  if (self->_singleThumbnailImageLength < 1)
  {
    return 0;
  }

  v13 = v5;
  v14 = v4;
  v15 = v3;
  if (self->_count <= a3)
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

  return ([(NSData *)self->_thumbnailData bytes:v6]+ v11 + self->_singleThumbnailImageLength * a3);
}

- (id)thumbnailDataAtIndex:(int64_t)a3
{
  v4 = [(PLPhotoBakedThumbnails *)self thumbnailBytesAtIndex:a3];
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

- (BOOL)saveToFile:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoBakedThumbnails *)self serializedData];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 writeToFile:v4 options:1073741825 error:0];
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
      v12 = [(PLPhotoBakedThumbnails *)self _thumbnailData];
      [v12 replaceBytesInRange:v11 withBytes:objc_msgSend(v12 length:{"length") - v11, objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length")}];
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

- (PLPhotoBakedThumbnails)initWithImages:(id)a3 format:(unsigned __int16)a4 options:(id)a5 delegate:(id)a6
{
  v8 = a4;
  v69 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
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

  v14->_format = v8;
  v14->_count = [v11 count];
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
        v54 = [MEMORY[0x1E696AAA8] currentHandler];
        [v54 handleFailureInMethod:a2 object:v15 file:@"PLPhotoBakedThumbnails.m" lineNumber:196 description:@"Tried to serialize multiple images into baked thumbnail with dynamic size"];
      }

      v23 = [v11 objectAtIndex:0];
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
    if (v12)
    {
      v32 = [v12 mutableCopy];
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
    v59 = v12;
    v39 = v57 + v15->_count * singleThumbnailImageLength;
    v15->_dataIsMutable = 1;
    v56 = v38;
    v40 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v39 + v38];
    thumbnailData = v15->_thumbnailData;
    v15->_thumbnailData = v40;

    v42 = [(NSData *)v15->_thumbnailData bytes];
    v43 = v42;
    *v42 = -1160913749;
    *(v42 + 4) = bswap32(v8);
    *(v42 + 10) = 0;
    *(v42 + 11) = v21 == 0;
    *(v42 + 8) = bswap32(LOWORD(v15->_count)) >> 16;
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

    *(v42 + 12) = v45;
    if (!v21)
    {
      *([(NSData *)v15->_thumbnailData bytes]+ 16) = vrev32_s8(vmovn_s64(vcvtq_u64_f64(v15->_size)));
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v46 = v11;
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

          [(PLPhotoBakedThumbnails *)v15 writeBorderedThumbnailOfImage:*(*(&v60 + 1) + 8 * i) toBuffer:v49 orientation:0 format:v8 formatInfo:v20 delegate:v13];
          v49 += v15->_singleThumbnailImageLength;
        }

        v48 = [v46 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v48);
    }

    if (v56)
    {
      v52 = [(PLPhotoBakedThumbnails *)v15 _thumbnailData];
      [v52 replaceBytesInRange:v55 withBytes:v56 length:{objc_msgSend(v58, "bytes"), v56}];
    }

    v12 = v59;
    goto LABEL_38;
  }

  v19 = 0;
LABEL_39:

  return v19;
}

- (PLPhotoBakedThumbnails)initWithContentsOfFile:(id)a3 format:(unsigned __int16)a4 readOnly:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if (v8)
  {
    if (v5)
    {
      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v8 options:8 error:0];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x1E695DF88]) initWithContentsOfFile:v8];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PLPhotoBakedThumbnails *)self initWithData:v10 format:v6 readOnly:v5];

  return v11;
}

- (PLPhotoBakedThumbnails)initWithData:(id)a3 format:(unsigned __int16)a4 readOnly:(BOOL)a5
{
  v6 = a4;
  v9 = a3;
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
  *(v10 + 4) = v6;
  v10[24] = !a5;
  objc_storeStrong(v10 + 4, a3);
  v13 = [*(v10 + 4) length];
  v14 = *(v10 + 4);
  if (!v14 || v13 < 0x10)
  {
    goto LABEL_17;
  }

  v16 = [v14 bytes];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16->u32[1];
  v18 = v16[1].u16[0];
  v19 = v16[1].u32[1];
  if (v16->i32[0] != -1160913749)
  {
    if (v16->i32[0] != -1411592774)
    {
LABEL_17:
      v25 = 0;
      goto LABEL_18;
    }

    v17 = bswap32(v17);
    v18 = __rev16(v18);
    v19 = bswap32(v19);
  }

  if (bswap32(v17) != v6)
  {
    goto LABEL_17;
  }

  if (v16[1].i8[3])
  {
    v23 = vrev32_s8(v16[2]);
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
    v29 = [MEMORY[0x1E695DEF0] dataWithBytes:&v16->i8[v27] length:v13 - v27];
    v30 = *(v10 + 7);
    *(v10 + 7) = v29;
  }

  v25 = v10;
LABEL_18:

  return v25;
}

+ (BOOL)_transformForImage:(CGImage *)a3 isCropped:(BOOL)a4 captureOrientation:(int)a5 sizeInOut:(CGSize *)a6 contextSizeOut:(CGSize *)a7 transformOut:(CGAffineTransform *)a8
{
  if (!a8)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:a1 file:@"PLPhotoBakedThumbnails.m" lineNumber:481 description:{@"Invalid parameter not satisfying: %@", @"transform"}];

    return 0;
  }

  result = 0;
  if (a6 && a7)
  {
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    if (!a4)
    {
      if (Width <= Height)
      {
        a6->width = floor(a6->height * (Width / Height));
      }

      else
      {
        a6->height = floor(a6->width * (Height / Width));
      }

      *a7 = *a6;
    }

    v17 = MEMORY[0x1E695EFD0];
    v19 = *MEMORY[0x1E695EFD0];
    v18 = *(MEMORY[0x1E695EFD0] + 16);
    *&a8->a = *MEMORY[0x1E695EFD0];
    *&a8->c = v18;
    v20 = *(v17 + 32);
    *&a8->tx = v20;
    switch(a5)
    {
      case 2:
        *&v35.a = v19;
        *&v35.c = v18;
        *&v35.tx = v20;
        CGAffineTransformRotate(&v36, &v35, 1.57079633);
        v25 = *&v36.c;
        *&a8->a = *&v36.a;
        *&a8->c = v25;
        *&a8->tx = *&v36.tx;
        v26 = -a6->height;
        v27 = *&a8->c;
        *&v35.a = *&a8->a;
        *&v35.c = v27;
        *&v35.tx = *&a8->tx;
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
        *&a8->a = *&v36.a;
        *&a8->c = v21;
        *&a8->tx = *&v36.tx;
        v22 = -a6->width;
        *&v21 = -a6->height;
        v23 = *&a8->c;
        *&v35.a = *&a8->a;
        *&v35.c = v23;
        *&v35.tx = *&a8->tx;
        CGAffineTransformTranslate(&v36, &v35, v22, *&v21);
        v24 = *&v36.c;
        *&a8->a = *&v36.a;
        *&a8->c = v24;
        *&a8->tx = *&v36.tx;
        return 1;
      default:
        *&v35.a = v19;
        *&v35.c = v18;
        *&v35.tx = v20;
        CGAffineTransformRotate(&v36, &v35, -1.57079633);
        v29 = *&v36.c;
        *&a8->a = *&v36.a;
        *&a8->c = v29;
        *&a8->tx = *&v36.tx;
        v28 = -a6->width;
        v30 = *&a8->c;
        *&v35.a = *&a8->a;
        *&v35.c = v30;
        *&v35.tx = *&a8->tx;
        v26 = 0.0;
        break;
    }

    CGAffineTransformTranslate(&v36, &v35, v28, v26);
    v31 = *&v36.c;
    *&a8->a = *&v36.a;
    *&a8->c = v31;
    *&a8->tx = *&v36.tx;
    *a7 = vextq_s8(*a6, *a6, 8uLL);
    return 1;
  }

  return result;
}

+ (id)thumbnailsWithContentsOfFile:(id)a3 format:(unsigned __int16)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[PLPhotoBakedThumbnails alloc] initWithContentsOfFile:v5 format:v4 readOnly:0];

  return v6;
}

@end