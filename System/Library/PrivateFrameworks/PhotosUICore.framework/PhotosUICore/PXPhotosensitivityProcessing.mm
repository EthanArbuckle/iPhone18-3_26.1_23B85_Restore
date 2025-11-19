@interface PXPhotosensitivityProcessing
- (PSEVideoProcessor)lock_processor;
- (PXPhotosensitivityProcessing)init;
- (__CVBuffer)_lock_processPixelBuffer:(__CVBuffer *)a3 timestamp:(double)a4;
- (__CVBuffer)copyAndProcessPixelBuffer:(__CVBuffer *)a3 timestamp:(double)a4;
- (__CVPixelBufferPool)_lock_poolForSize:(CGSize)a3;
- (void)dealloc;
@end

@implementation PXPhotosensitivityProcessing

- (__CVPixelBufferPool)_lock_poolForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v15[5] = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  lock_pool = self->_lock_pool;
  v7 = self->_lock_poolSize.height;
  if (self->_lock_poolSize.width != width || v7 != height)
  {
    if (lock_pool)
    {
      CVPixelBufferPoolRelease(self->_lock_pool);
      self->_lock_pool = 0;
    }

    self->_lock_poolSize.width = width;
    self->_lock_poolSize.height = height;
    v9 = *MEMORY[0x1E69660D8];
    v14[0] = *MEMORY[0x1E6966100];
    v14[1] = v9;
    v15[0] = MEMORY[0x1E695E118];
    v15[1] = MEMORY[0x1E695E0F8];
    v14[2] = *MEMORY[0x1E6966208];
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:{width, v7}];
    v15[2] = v10;
    v14[3] = *MEMORY[0x1E69660B8];
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:height];
    v14[4] = *MEMORY[0x1E6966130];
    v15[3] = v11;
    v15[4] = &unk_1F1909CD0;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

    CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, v12, &self->_lock_pool);
    lock_pool = self->_lock_pool;
  }

  return lock_pool;
}

- (__CVBuffer)_lock_processPixelBuffer:(__CVBuffer *)a3 timestamp:(double)a4
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (([MEMORY[0x1E69C49C8] needsProcessing] & 1) != 0 || -[PXPhotosensitivityProcessing forceEnable](self, "forceEnable"))
  {
    IOSurface = CVPixelBufferGetIOSurface(a3);
    if (IOSurface)
    {
      v8 = IOSurface;
      v9 = [(PXPhotosensitivityProcessing *)self lock_processor];
      if (([v9 canProcessSurface:v8]& 1) != 0)
      {
        Width = CVPixelBufferGetWidth(a3);
        v11 = [(PXPhotosensitivityProcessing *)self _lock_poolForSize:Width, CVPixelBufferGetHeight(a3)];
        if (!v11)
        {
          PXAssertGetLog();
        }

        *pixelBufferOut = 0;
        if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], v11, pixelBufferOut))
        {
          PXAssertGetLog();
        }

        v15 = CVPixelBufferGetIOSurface(*pixelBufferOut);
        if (!v15)
        {
          PXAssertGetLog();
        }

        v16 = v15;
        v17 = CVBufferCopyAttachments(a3, kCVAttachmentMode_ShouldPropagate);
        CVBufferSetAttachments(*pixelBufferOut, v17, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v17);
        [v9 processSourceSurface:v8 withTimestamp:v16 toDestinationSurface:&unk_1F190E6D0 options:a4];
        v12 = *pixelBufferOut;
        goto LABEL_16;
      }

      v13 = PLUIGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *pixelBufferOut = 138412290;
        *&pixelBufferOut[4] = v8;
        _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "PXPhotosensitivityProcessing cannot process surface %@", pixelBufferOut, 0xCu);
      }
    }

    else
    {
      v9 = PLUIGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *pixelBufferOut = 138412290;
        *&pixelBufferOut[4] = a3;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "PXPhotosensitivityProcessing unable to get surface from %@", pixelBufferOut, 0xCu);
      }
    }

    v12 = 0;
LABEL_16:

    return v12;
  }

  return 0;
}

- (__CVBuffer)copyAndProcessPixelBuffer:(__CVBuffer *)a3 timestamp:(double)a4
{
  os_unfair_lock_lock(&self->_lock);
  v7 = [(PXPhotosensitivityProcessing *)self _lock_processPixelBuffer:a3 timestamp:a4];
  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (PSEVideoProcessor)lock_processor
{
  os_unfair_lock_assert_owner(&self->_lock);
  lock_processor = self->_lock_processor;
  if (!lock_processor)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_INFO, "PXPhotosensitivityProcessing creating PSEVideoProcessor for dimming flashing lights", v8, 2u);
    }

    v5 = objc_alloc_init(MEMORY[0x1E69C49C8]);
    v6 = self->_lock_processor;
    self->_lock_processor = v5;

    lock_processor = self->_lock_processor;
  }

  return lock_processor;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_lock_pool);
  v3.receiver = self;
  v3.super_class = PXPhotosensitivityProcessing;
  [(PXPhotosensitivityProcessing *)&v3 dealloc];
}

- (PXPhotosensitivityProcessing)init
{
  v3.receiver = self;
  v3.super_class = PXPhotosensitivityProcessing;
  result = [(PXPhotosensitivityProcessing *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end