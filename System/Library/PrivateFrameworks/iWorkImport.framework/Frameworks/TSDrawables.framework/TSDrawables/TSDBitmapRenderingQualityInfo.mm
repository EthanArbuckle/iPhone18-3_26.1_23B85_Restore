@interface TSDBitmapRenderingQualityInfo
- (CGImage)degradedImageRefForProvider:(id)provider ofSize:(CGSize)size;
- (TSDBitmapRenderingQualityInfo)initWithQuality:(unint64_t)quality canvasScale:(double)scale;
- (id)description;
- (void)cacheProvider:(id)provider ofSize:(CGSize)size;
@end

@implementation TSDBitmapRenderingQualityInfo

- (TSDBitmapRenderingQualityInfo)initWithQuality:(unint64_t)quality canvasScale:(double)scale
{
  v11.receiver = self;
  v11.super_class = TSDBitmapRenderingQualityInfo;
  v6 = [(TSDBitmapRenderingQualityInfo *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->mQuality = quality;
    v6->mCanvasScale = scale;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mImageMap = v7->mImageMap;
    v7->mImageMap = v8;
  }

  return v7;
}

- (void)cacheProvider:(id)provider ofSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  v7 = self->mImageMap;
  objc_sync_enter(v7);
  mImageMap = self->mImageMap;
  v10 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], v9, providerCopy);
  v12 = objc_msgSend_objectForKey_(mImageMap, v11, v10);

  if (!v12)
  {
    v12 = objc_alloc_init(objc_msgSend_imageMapValueClass(self, v13, v14));
    v15 = self->mImageMap;
    v17 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], v16, providerCopy);
    objc_msgSend_setObject_forKey_(v15, v18, v12, v17);
  }

  objc_msgSend_addSize_(v12, v13, v14, width, height);
  objc_msgSend_doneCaching_forProvider_(self, v19, v12, providerCopy);

  objc_sync_exit(v7);
}

- (CGImage)degradedImageRefForProvider:(id)provider ofSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  objc_msgSend_cacheProvider_ofSize_(self, v8, providerCopy, width, height);
  v9 = self->mImageMap;
  objc_sync_enter(v9);
  mImageMap = self->mImageMap;
  v12 = objc_msgSend_valueWithNonretainedObject_(MEMORY[0x277CCAE60], v11, providerCopy);
  v14 = objc_msgSend_objectForKey_(mImageMap, v13, v12);

  if (!v14)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDBitmapRenderingQualityInfo degradedImageRefForProvider:ofSize:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapRenderingQualityInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 81, 0, "Bitmap rendering quality info encountered an unprocessed image ref");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
  }

  v23 = objc_msgSend_degradedImageRefForProvider_quality_canvasScale_(v14, v15, providerCopy, self->mQuality, self->mCanvasScale);
  CGImageRetain(v23);
  objc_sync_exit(v9);

  if (v23)
  {
    CFAutorelease(v23);
  }

  return v23;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_quality(self, v6, v7);
  if (v8 > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_27A6CD088[v8];
  }

  objc_msgSend_canvasScale(self, v9, v10);
  v14 = objc_msgSend_stringWithFormat_(v3, v12, @"<%@: %p quality:%@ canvasScale:%f>", v5, self, v11, v13);

  return v14;
}

@end