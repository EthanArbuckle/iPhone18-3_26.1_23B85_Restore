@interface TSDMutableImageFill
- (id)copyWithZone:(_NSZone *)a3;
- (void)setImageData:(id)a3;
- (void)setScale:(double)a3;
- (void)setTechnique:(unint64_t)a3;
- (void)setTintColor:(id)a3;
@end

@implementation TSDMutableImageFill

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(TSDImageFill, a2, a3);
  mImageData = self->super.mImageData;
  objc_msgSend_fillSize(self, v6, v7);

  return MEMORY[0x2821F9670](v4, sel_initWithImageData_technique_tintColor_size_referenceColor_, mImageData);
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  mTintColor = self->super.mTintColor;
  if (v4 | mTintColor)
  {
    v16 = v4;
    isEqual = objc_msgSend_isEqual_(mTintColor, v4, v4);
    v4 = v16;
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
      v4 = v16;
    }
  }
}

- (void)setTechnique:(unint64_t)a3
{
  v3 = a3;
  if (a3 >= 5)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMutableImageFill setTechnique:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 1546, 0, "Invalid image fill technique: %zu Defaulting to natural size.", v3);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
    v3 = 0;
  }

  self->super.mTechnique = v3;
}

- (void)setImageData:(id)a3
{
  v5 = a3;
  if (self->super.mImageData != v5)
  {
    v16 = v5;
    objc_msgSend_p_clearTintedImageCache(self, v6, v7);
    objc_storeStrong(&self->super.mImageData, a3);
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
    v5 = v16;
  }
}

- (void)setScale:(double)a3
{
  objc_msgSend_p_imageDataNaturalSize(self, a2, v3);
  TSUMultiplySizeScalar();
  objc_msgSend_setFillSize_(self, v6, v7);
  objc_msgSend_scale(self, v8, v9);
  if (v11 != a3 && vabdd_f64(a3, v11) >= 0.00999999978)
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