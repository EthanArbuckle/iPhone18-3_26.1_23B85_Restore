@interface TSDMutableImageFill
- (id)copyWithZone:(_NSZone *)zone;
- (void)setImageData:(id)data;
- (void)setScale:(double)scale;
- (void)setTechnique:(unint64_t)technique;
- (void)setTintColor:(id)color;
@end

@implementation TSDMutableImageFill

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSDImageFill, a2, zone);
  mImageData = self->super.mImageData;
  objc_msgSend_fillSize(self, v6, v7);

  return MEMORY[0x2821F9670](v4, sel_initWithImageData_technique_tintColor_size_referenceColor_, mImageData);
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  mTintColor = self->super.mTintColor;
  if (colorCopy | mTintColor)
  {
    v16 = colorCopy;
    isEqual = objc_msgSend_isEqual_(mTintColor, colorCopy, colorCopy);
    colorCopy = v16;
    if ((isEqual & 1) == 0)
    {
      objc_msgSend_p_clearTintedImageCache(self, v16, v7);
      v10 = objc_msgSend_copy(v16, v8, v9);
      v11 = self->super.mTintColor;
      self->super.mTintColor = v10;

      mReferenceColor = self->super.mReferenceColor;
      self->super.mReferenceColor = 0;

      mCachedReferenceColor = self->super.mCachedReferenceColor;
      self->super.mCachedReferenceColor = 0;

      objc_msgSend_i_updateStoredReferenceColorIfNeeded(self, v14, v15);
      colorCopy = v16;
    }
  }
}

- (void)setTechnique:(unint64_t)technique
{
  techniqueCopy = technique;
  if (technique >= 5)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMutableImageFill setTechnique:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 1546, 0, "Invalid image fill technique: %zu Defaulting to natural size.", techniqueCopy);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
    techniqueCopy = 0;
  }

  self->super.mTechnique = techniqueCopy;
}

- (void)setImageData:(id)data
{
  dataCopy = data;
  if (self->super.mImageData != dataCopy)
  {
    v16 = dataCopy;
    objc_msgSend_p_clearTintedImageCache(self, v6, v7);
    objc_storeStrong(&self->super.mImageData, data);
    self->super.mFillSize = *MEMORY[0x277CBF3A8];
    objc_msgSend_fillSize(self, v8, v9);
    self->super.mFillSize.width = v10;
    self->super.mFillSize.height = v11;
    mReferenceColor = self->super.mReferenceColor;
    self->super.mReferenceColor = 0;

    mCachedReferenceColor = self->super.mCachedReferenceColor;
    self->super.mCachedReferenceColor = 0;

    self->super.mShouldSkipFurtherAttemptsToCalculateReferenceColor = 0;
    objc_msgSend_i_updateStoredReferenceColorIfNeeded(self, v14, v15);
    dataCopy = v16;
  }
}

- (void)setScale:(double)scale
{
  objc_msgSend_p_imageDataNaturalSize(self, a2, v3);
  TSUMultiplySizeScalar();
  objc_msgSend_setFillSize_(self, v6, v7);
  objc_msgSend_scale(self, v8, v9);
  if (v11 != scale && vabdd_f64(scale, v11) >= 0.00999999978)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDMutableImageFill setScale:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1582, 0, "Scale math changed the scale");

    v19 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v19, v17, v18);
  }
}

@end