@interface VKCRemoveBackgroundRequest
+ (VKCRemoveBackgroundRequest)requestWithImage:(CGImage *)a3 orientation:(int64_t)a4 canResize:(BOOL)a5;
- (CGSize)size;
- (VKCRemoveBackgroundRequest)initWithCGImage:(CGImage *)a3 orientation:(int64_t)a4;
- (VKCRemoveBackgroundRequest)initWithPhotosAnalyzerRequest:(id)a3;
- (__CVBuffer)pixelBuffer;
- (id)_createMADMaskRequest;
- (id)_createMADMatteRequest;
- (id)createMADRequest;
- (id)description;
- (int)MADRequestID;
- (void)dealloc;
- (void)setMADRequestID:(int)a3;
@end

@implementation VKCRemoveBackgroundRequest

- (VKCRemoveBackgroundRequest)initWithPhotosAnalyzerRequest:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = VKCRemoveBackgroundRequest;
  v6 = [(VKCRemoveBackgroundRequest *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = v9;

    v7->_requestID = -1;
    objc_storeStrong(&v7->_photosRequest, a3);
  }

  return v7;
}

+ (VKCRemoveBackgroundRequest)requestWithImage:(CGImage *)a3 orientation:(int64_t)a4 canResize:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  Width = CGImageGetWidth(a3);
  v9 = Width * CGImageGetHeight(v7);
  if (v9 > 12582912.0 && v5)
  {
    v11 = _VKSignpostLog();
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B4335000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VisionKit Remove Background Resize", &unk_1B4435C0E, buf, 2u);
    }

    v12 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(&dword_1B4335000, v12, OS_LOG_TYPE_INFO, "Signpost Begin: VisionKit Remove Background Resize", v20, 2u);
    }

    ScaledCGImage = vk_createScaledCGImage(v7, floor(sqrt(12582912.0 / v9) * 100.0) / 100.0);
    v7 = ScaledCGImage;
    if (ScaledCGImage)
    {
      CFAutorelease(ScaledCGImage);
    }

    v14 = _VKSignpostLog();
    if (os_signpost_enabled(v14))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B4335000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VisionKit Remove Background Resize", &unk_1B4435C0E, v19, 2u);
    }

    v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_1B4335000, v15, OS_LOG_TYPE_INFO, "Signpost End: VisionKit Remove Background Resize", v18, 2u);
    }
  }

  v16 = [[VKCRemoveBackgroundRequest alloc] initWithCGImage:v7 orientation:a4];

  return v16;
}

- (VKCRemoveBackgroundRequest)initWithCGImage:(CGImage *)a3 orientation:(int64_t)a4
{
  v14.receiver = self;
  v14.super_class = VKCRemoveBackgroundRequest;
  v6 = [(VKCRemoveBackgroundRequest *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = v9;

    v7->_requestID = -1;
    v7->_CGImage = CGImageRetain(a3);
    v7->_imageOrientation = a4;
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    v7->_size.width = Width;
    v7->_size.height = Height;
  }

  return v7;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  CGImageRelease(self->_CGImage);
  v3.receiver = self;
  v3.super_class = VKCRemoveBackgroundRequest;
  [(VKCRemoveBackgroundRequest *)&v3 dealloc];
}

- (__CVBuffer)pixelBuffer
{
  os_unfair_lock_lock(&self->_lock);
  pixelBuffer = self->_pixelBuffer;
  if (!pixelBuffer)
  {
    v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    self->_pixelBuffer = vk_ioSurfaceBackedPixelBufferFromCGImage([(VKCRemoveBackgroundRequest *)self CGImage]);
    CGColorSpaceRelease(v4);
    pixelBuffer = self->_pixelBuffer;
  }

  os_unfair_lock_unlock(&self->_lock);
  return pixelBuffer;
}

- (int)MADRequestID
{
  os_unfair_lock_lock(&self->_lock);
  requestID = self->_requestID;
  os_unfair_lock_unlock(&self->_lock);
  return requestID;
}

- (void)setMADRequestID:(int)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_requestID = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)createMADRequest
{
  if ([(VKCRemoveBackgroundRequest *)self maskOnly])
  {
    [(VKCRemoveBackgroundRequest *)self _createMADMaskRequest];
  }

  else
  {
    [(VKCRemoveBackgroundRequest *)self _createMADMatteRequest];
  }
  v3 = ;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(VKCRemoveBackgroundRequest *)self identifier];
  [(VKCRemoveBackgroundRequest *)self size];
  v7 = VKMUIStringForSize(v5, v6);
  v8 = VKMUIStringForBool([(VKCRemoveBackgroundRequest *)self cropToFit]);
  v9 = VKMUIStringForBool([(VKCRemoveBackgroundRequest *)self maskOnly]);
  v10 = [v3 stringWithFormat:@"RemoveBGRequest id: %@\n size: %@\n cropToFit: %@\n maskOnly: %@", v4, v7, v8, v9];

  return v10;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_createMADMaskRequest
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69AE398]);
    v3 = [a1 VIImageType];
    [v2 setImageType:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_createMADMatteRequest
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69AE3A8]);
    v3 = [a1 VIImageType];
    [v2 setImageType:v3];

    [v2 setCropResult:{objc_msgSend(a1, "cropToFit")}];
    if ([a1 performInPlace])
    {
      if (![a1 cropToFit])
      {
        v5 = 1;
        goto LABEL_9;
      }

      v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_1B4335000, v4, OS_LOG_TYPE_ERROR, "Trying to perform a remove background request with performInPlace and cropToFit set to true, this is not support, falling back to just cropToFit", v8, 2u);
      }
    }

    v5 = 0;
LABEL_9:
    [v2 setInPlace:v5];
    v6 = [a1 selectedIndexSet];
    [v2 setInstances:v6];

    goto LABEL_10;
  }

  v2 = 0;
LABEL_10:

  return v2;
}

@end