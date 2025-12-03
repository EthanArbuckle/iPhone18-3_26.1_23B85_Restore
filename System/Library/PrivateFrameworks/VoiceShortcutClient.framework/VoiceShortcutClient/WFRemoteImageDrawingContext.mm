@interface WFRemoteImageDrawingContext
- (BOOL)allocateSharedBuffer;
- (CGImage)imageAtIndex:(unint64_t)index;
- (CGSize)singleImageSize;
- (WFRemoteImageDrawingContext)initWithCoder:(id)coder;
- (WFRemoteImageDrawingContext)initWithImageCount:(unint64_t)count singleImageSize:(CGSize)size scale:(double)scale colorSpace:(CGColorSpace *)space buffer:(void *)buffer bufferSize:(unint64_t)bufferSize drawAlphaOnly:(BOOL)only;
- (double)screenScale;
- (unint64_t)numberOfComponents;
- (unint64_t)sizePerImage;
- (unsigned)bitmapInfo;
- (void)accessBitmapContextForImageAtIndex:(unint64_t)index accessBlock:(id)block;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFRemoteImageDrawingContext

- (CGSize)singleImageSize
{
  width = self->_singleImageSize.width;
  height = self->_singleImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (WFRemoteImageDrawingContext)initWithCoder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteImageDrawingContext.m" lineNumber:252 description:{@"Attempting to decode %@ with a non-XPC coder--this is not allowed", v26}];
  }

  v6 = coderCopy;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 decodeDoubleForKey:@"scale"];
  v10 = v9;
  v11 = [v8 decodeIntForKey:@"imageCount"];
  v12 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"singleImageSize"];
  v13 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"colorSpace"];
  v14 = [v8 decodeBoolForKey:@"drawAlphaOnly"];
  region = 0;
  v15 = [v8 decodeXPCObjectOfType:MEMORY[0x1E69E9F08] forKey:@"sharedMemory"];

  if (!v15)
  {
    v19 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[WFRemoteImageDrawingContext initWithCoder:]";
      *&buf[12] = 2114;
      *&buf[14] = @"sharedMemory";
      v20 = "%s Could not find shmem for key: %{public}@";
LABEL_16:
      _os_log_impl(&dword_1B1DE3000, v19, OS_LOG_TYPE_FAULT, v20, buf, 0x16u);
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_20;
  }

  v16 = xpc_shmem_map(v15, &region);
  if (!v16)
  {
    v19 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[WFRemoteImageDrawingContext initWithCoder:]";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      v20 = "%s Could not map shared memory, mapped drawing buffer size is %llu";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v17 = v16;
  if (v13)
  {
    v18 = CGColorSpaceCreateWithName(v13);
  }

  else
  {
    v18 = 0;
  }

  *buf = *MEMORY[0x1E695F060];
  [v12 getValue:buf size:16];
  self = [(WFRemoteImageDrawingContext *)self initWithImageCount:v11 singleImageSize:v18 scale:region colorSpace:v17 buffer:v14 bufferSize:*buf drawAlphaOnly:*&buf[8], v10];
  selfCopy = self;
LABEL_20:

  v22 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteImageDrawingContext.m" lineNumber:234 description:{@"Attempting to encode %@ with a non-XPC coder--this is not allowed", v15}];
  }

  v6 = xpc_shmem_create([(WFRemoteImageDrawingContext *)self buffer], [(WFRemoteImageDrawingContext *)self imageCount]* [(WFRemoteImageDrawingContext *)self sizePerImage]);
  Name = [(WFRemoteImageDrawingContext *)self colorSpace];
  if (Name)
  {
    Name = CGColorSpaceGetName([(WFRemoteImageDrawingContext *)self colorSpace]);
  }

  v8 = MEMORY[0x1E696B098];
  v9 = Name;
  v10 = [v8 valueWithBytes:&self->_singleImageSize objCType:"{CGSize=dd}"];
  v16 = coderCopy;
  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  [(WFRemoteImageDrawingContext *)self scale];
  [v12 encodeDouble:@"scale" forKey:?];
  [v12 encodeInteger:-[WFRemoteImageDrawingContext imageCount](self forKey:{"imageCount"), @"imageCount"}];
  [v12 encodeObject:v10 forKey:@"singleImageSize"];
  [v12 encodeObject:v9 forKey:@"colorSpace"];

  [v12 encodeBool:-[WFRemoteImageDrawingContext drawAlphaOnly](self forKey:{"drawAlphaOnly"), @"drawAlphaOnly"}];
  [v12 encodeXPCObject:v6 forKey:@"sharedMemory"];
}

- (void)accessBitmapContextForImageAtIndex:(unint64_t)index accessBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([(WFRemoteImageDrawingContext *)self imageCount]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteImageDrawingContext.m" lineNumber:199 description:{@"Index %lu must be in bounds (0..%lu)", index, -[WFRemoteImageDrawingContext imageCount](self, "imageCount")}];
  }

  sizePerImage = [(WFRemoteImageDrawingContext *)self sizePerImage];
  v9 = [(WFRemoteImageDrawingContext *)self buffer]+ sizePerImage * index;
  [(WFRemoteImageDrawingContext *)self singleImageSize];
  v11 = v10;
  [(WFRemoteImageDrawingContext *)self scale];
  v13 = (v11 * v12);
  [(WFRemoteImageDrawingContext *)self singleImageSize];
  v15 = v14;
  [(WFRemoteImageDrawingContext *)self scale];
  v17 = CGBitmapContextCreate(v9, v13, (v15 * v16), 8uLL, [(WFRemoteImageDrawingContext *)self numberOfComponents]* v13, [(WFRemoteImageDrawingContext *)self colorSpace], [(WFRemoteImageDrawingContext *)self bitmapInfo]);
  if (v17)
  {
    v18 = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__WFRemoteImageDrawingContext_accessBitmapContextForImageAtIndex_accessBlock___block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v17;
    v19 = _Block_copy(aBlock);
    [(WFRemoteImageDrawingContext *)self scale];
    v21 = v20;
    [(WFRemoteImageDrawingContext *)self scale];
    CGContextScaleCTM(v18, v21, -v22);
    [(WFRemoteImageDrawingContext *)self singleImageSize];
    CGContextTranslateCTM(v18, 0.0, -v23);
    blockCopy[2](blockCopy, v18);
    (*(v19 + 16))(v19);
  }

  else
  {
    v19 = getWFVoiceShortcutClientLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v28 = "[WFRemoteImageDrawingContext accessBitmapContextForImageAtIndex:accessBlock:]";
      v29 = 2048;
      indexCopy = index;
      _os_log_impl(&dword_1B1DE3000, v19, OS_LOG_TYPE_FAULT, "%s Shared bitmap context is nil at index %lu", buf, 0x16u);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (CGImage)imageAtIndex:(unint64_t)index
{
  if ([(WFRemoteImageDrawingContext *)self imageCount]<= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteImageDrawingContext.m" lineNumber:183 description:{@"Index %lu must be in bounds (0..%lu)", index, -[WFRemoteImageDrawingContext imageCount](self, "imageCount")}];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__WFRemoteImageDrawingContext_imageAtIndex___block_invoke;
  v10[3] = &unk_1E7B022A0;
  v10[4] = &v11;
  [(WFRemoteImageDrawingContext *)self accessBitmapContextForImageAtIndex:index accessBlock:v10];
  v6 = v12[3];
  if (v6)
  {
    v7 = CFAutorelease(v6);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

CGImageRef __44__WFRemoteImageDrawingContext_imageAtIndex___block_invoke(uint64_t a1, CGContextRef context)
{
  result = CGBitmapContextCreateImage(context);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)allocateSharedBuffer
{
  v31 = *MEMORY[0x1E69E9840];
  if (![(WFRemoteImageDrawingContext *)self buffer])
  {
    sizePerImage = [(WFRemoteImageDrawingContext *)self sizePerImage];
    v5 = [(WFRemoteImageDrawingContext *)self imageCount]* sizePerImage;
    object_handle = 0;
    address = 0;
    size = v5;
    v6 = MEMORY[0x1E69E9A60];
    memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x1E69E9A60], &size, 0, 139267, &object_handle, 0);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__WFRemoteImageDrawingContext_allocateSharedBuffer__block_invoke;
    aBlock[3] = &__block_descriptor_36_e5_v8__0l;
    v21 = object_handle;
    v8 = _Block_copy(aBlock);
    if (memory_entry_64)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A5A0] code:memory_entry_64 userInfo:0];
      v10 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v26 = "[WFRemoteImageDrawingContext allocateSharedBuffer]";
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_FAULT, "%s Could not make memory entry for remote image drawing: %@", buf, 0x16u);
      }
    }

    else
    {
      if (size < v5)
      {
        v11 = getWFVoiceShortcutClientLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315650;
          v26 = "[WFRemoteImageDrawingContext allocateSharedBuffer]";
          v27 = 2048;
          v28 = v5;
          v29 = 2048;
          v30 = size;
          _os_log_impl(&dword_1B1DE3000, v11, OS_LOG_TYPE_FAULT, "%s Could not make memory entry of requested size for remote image drawing (expecting %lu bytes, got %llu bytes)", buf, 0x20u);
        }

        goto LABEL_15;
      }

      v12 = mach_vm_map(*v6, &address, size, 0, 1, object_handle, 0, 0, 3, 3, 1u);
      if (!v12)
      {
        v15 = mach_memory_entry_ownership(object_handle, *v6, 4, 0);
        if (v15)
        {
          v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A5A0] code:v15 userInfo:0];
          v17 = getWFVoiceShortcutClientLogObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v26 = "[WFRemoteImageDrawingContext allocateSharedBuffer]";
            v27 = 2114;
            v28 = v16;
            _os_log_impl(&dword_1B1DE3000, v17, OS_LOG_TYPE_ERROR, "%s Could not move memory entry to the graphics ledger for remote image drawing: %{public}@. We're proceeding - this is not a blocking error.", buf, 0x16u);
          }
        }

        v18 = size;
        self->_buffer = address;
        self->_bufferSize = v18;
        buffer = [(WFRemoteImageDrawingContext *)self buffer];
        bzero(buffer, size);
        v3 = 1;
        goto LABEL_16;
      }

      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A5A0] code:v12 userInfo:0];
      v10 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v26 = "[WFRemoteImageDrawingContext allocateSharedBuffer]";
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_1B1DE3000, v10, OS_LOG_TYPE_FAULT, "%s Could not map memory entry for remote image drawing: %@", buf, 0x16u);
      }
    }

LABEL_15:
    v3 = 0;
LABEL_16:
    v8[2](v8);

    goto LABEL_17;
  }

  v3 = 1;
LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t __51__WFRemoteImageDrawingContext_allocateSharedBuffer__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    return mach_port_deallocate(*MEMORY[0x1E69E9A60], v1);
  }

  return result;
}

- (unint64_t)sizePerImage
{
  [(WFRemoteImageDrawingContext *)self singleImageSize];
  v4 = v3;
  [(WFRemoteImageDrawingContext *)self scale];
  v6 = v4 * v5;
  [(WFRemoteImageDrawingContext *)self singleImageSize];
  v8 = v7;
  [(WFRemoteImageDrawingContext *)self scale];
  return (v6 * (v8 * v9) * [(WFRemoteImageDrawingContext *)self numberOfComponents]);
}

- (double)screenScale
{
  v2 = MGCopyAnswer();
  [v2 doubleValue];
  if (v3 <= 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (unsigned)bitmapInfo
{
  if ([(WFRemoteImageDrawingContext *)self drawAlphaOnly])
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)numberOfComponents
{
  if ([(WFRemoteImageDrawingContext *)self colorSpace])
  {
    return CGColorSpaceGetNumberOfComponents([(WFRemoteImageDrawingContext *)self colorSpace]) + 1;
  }

  else
  {
    return 1;
  }
}

- (void)dealloc
{
  if ([(WFRemoteImageDrawingContext *)self buffer])
  {
    munmap([(WFRemoteImageDrawingContext *)self buffer], [(WFRemoteImageDrawingContext *)self bufferSize]);
  }

  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = WFRemoteImageDrawingContext;
  [(WFRemoteImageDrawingContext *)&v3 dealloc];
}

- (WFRemoteImageDrawingContext)initWithImageCount:(unint64_t)count singleImageSize:(CGSize)size scale:(double)scale colorSpace:(CGColorSpace *)space buffer:(void *)buffer bufferSize:(unint64_t)bufferSize drawAlphaOnly:(BOOL)only
{
  height = size.height;
  width = size.width;
  if (size.width <= 0.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteImageDrawingContext.m" lineNumber:67 description:@"Image width should be greater than 0"];
  }

  if (height <= 0.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFRemoteImageDrawingContext.m" lineNumber:68 description:@"Image height should be greater than 0"];
  }

  v27.receiver = self;
  v27.super_class = WFRemoteImageDrawingContext;
  v19 = [(WFRemoteImageDrawingContext *)&v27 init];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_15;
  }

  v19->_imageCount = count;
  v19->_singleImageSize.width = width;
  v19->_singleImageSize.height = height;
  if (scale <= 0.0)
  {
    [(WFRemoteImageDrawingContext *)v19 screenScale];
    scale = v21;
  }

  v20[3] = scale;
  if (space)
  {
    v22 = CGColorSpaceRetain(space);
  }

  else
  {
    v22 = 0;
  }

  *(v20 + 4) = v22;
  *(v20 + 8) = only;
  if (!buffer)
  {
    if ([v20 allocateSharedBuffer])
    {
      goto LABEL_14;
    }

LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  *(v20 + 6) = buffer;
  *(v20 + 7) = bufferSize;
LABEL_14:
  v23 = v20;
LABEL_16:

  return v23;
}

@end