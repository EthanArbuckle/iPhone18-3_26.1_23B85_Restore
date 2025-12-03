@interface TSDImageFill
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (BOOL)canApplyToRenderable;
- (BOOL)canApplyToRenderableByAddingSubrenderables;
- (BOOL)canCopyData;
- (BOOL)drawsInOneStep;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOpaque;
- (BOOL)p_shouldApplyTintedImage;
- (CGRect)p_drawnRectForImageSize:(CGSize)size destRect:(CGRect)rect inContext:(CGContext *)context;
- (CGSize)fillSize;
- (CGSize)p_fillSize;
- (CGSize)p_imageDataNaturalSize;
- (CGSize)p_sizeOfFillImageForDestRect:(CGRect)rect inContext:(CGContext *)context;
- (CGSize)renderedImageSizeForObjectSize:(CGSize)size;
- (NSArray)referencedDataList;
- (TSDImageFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSDImageFill)initWithImageData:(id)data technique:(unint64_t)technique tintColor:(id)color size:(CGSize)size referenceColor:(id)referenceColor;
- (double)scale;
- (id)copyWithNewImageData:(id)data;
- (id)imageDataAtFillSize;
- (id)initForUnarchiving;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)p_cachedImageForSize:(CGSize)size renderingConfiguration:(id)configuration;
- (id)p_calculateReferenceColor;
- (id)p_halfSizeCachedHDRImage;
- (id)p_halfSizeCachedImage;
- (id)p_quarterSizeCachedHDRImage;
- (id)p_quarterSizeCachedImage;
- (id)p_standardSizeCachedHDRImage;
- (id)p_standardSizeCachedImage;
- (id)p_tintedImageWithScale:(double)scale useHDR:(BOOL)r;
- (id)p_validatedImageProvider;
- (id)referenceColor;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (void)dealloc;
- (void)drawFillInContext:(CGContext *)context rect:(CGRect)rect clippingToPath:(CGPath *)path;
- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context;
- (void)i_commonInit;
- (void)i_commonSetup;
- (void)i_setStoredReferenceColor:(id)color;
- (void)i_updateStoredReferenceColorIfNeeded;
- (void)p_clearTintedImageCache;
- (void)p_drawBitmapImage:(CGImage *)image withOrientation:(int64_t)orientation inContext:(CGContext *)context bounds:(CGRect)bounds;
- (void)p_drawPDFWithProvider:(id)provider inContext:(CGContext *)context bounds:(CGRect)bounds;
- (void)p_paintPath:(CGPath *)path inContext:(CGContext *)context rectForFill:(CGRect)fill;
- (void)p_setFillSizeForApplicationData;
- (void)p_setTechnique:(unint64_t)technique;
- (void)p_updateCachedReferenceColorIfNeeded;
- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSDImageFill

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSDImageFill alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy);

  return v8;
}

- (TSDImageFill)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9 = objc_msgSend_initForUnarchiving(self, v7, v8);
  v11 = v9;
  if (v9)
  {
    if (*(archive + 8))
    {
      v12 = *(archive + 8);
    }

    else
    {
      v12 = &TSD::_ImageFillArchive_default_instance_;
    }

    v13 = *(v12 + 4);
    if (v13)
    {
      v16 = v12[3];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = sub_276691DEC;
      v48[3] = &unk_27A6CC8D0;
      v49 = v9;
      v17 = unarchiverCopy;
      v18 = objc_opt_class();
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v19, v16, v18, 0, v48);
    }

    else if ((v13 & 0x10) != 0)
    {
      v14 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v10, v12[7]);
      objc_msgSend_p_setImageData_(v11, v15, v14);
    }

    if (*(v12 + 17))
    {
      v20 = *(v12 + 84);
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = sub_276691E58;
      v45[3] = &unk_27A6CC948;
      v46 = v11;
      v47 = v20;
      objc_msgSend_addFinalizeHandler_(unarchiverCopy, v21, v45);
    }

    v22 = *(v12 + 20);
    if (v22 >= 5)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSDImageFill(PersistenceAdditions) initWithArchive:unarchiver:]");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFillPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 84, 0, "Image fill technique unknown; defaulting to natural size.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
      v22 = 0;
    }

    objc_msgSend_p_setTechnique_(v11, v10, v22);
    v32 = *(v12 + 4);
    if ((v32 & 2) != 0)
    {
      v33 = TSPTSUColorCreateFromMessage();
      objc_msgSend_p_setTintColor_(v11, v34, v33);

      v32 = *(v12 + 4);
    }

    if ((v32 & 4) != 0)
    {
      objc_msgSend_p_setFillSize_(v11, v30, v31, *(v12[5] + 24), *(v12[5] + 28));
      v32 = *(v12 + 4);
    }

    if ((v32 & 0x40) != 0)
    {
      v38 = TSPTSUColorCreateFromMessage();
      objc_msgSend_i_setStoredReferenceColor_(v11, v39, v38);

      v37 = 0;
    }

    else
    {
      v37 = objc_msgSend_fileFormatVersion(unarchiverCopy, v30, v31) < 0x4000100000004;
    }

    objc_msgSend_i_commonSetup(v11, v35, v36);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = sub_276691EC0;
    v42[3] = &unk_27A6CC948;
    v43 = v11;
    v44 = v37;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v40, v42);
  }

  return v11;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 10) |= 4u;
  v8 = *(archive + 8);
  if (!v8)
  {
    v9 = *(archive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageFillArchive>(v9);
    *(archive + 8) = v8;
  }

  v10 = objc_msgSend_p_imageData(self, v6, v7);

  if (v10)
  {
    v14 = objc_msgSend_p_imageData(self, v11, v12);
    *(v8 + 16) |= 0x10u;
    v15 = *(v8 + 56);
    if (!v15)
    {
      v16 = *(v8 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C9BA90](v16);
      *(v8 + 56) = v15;
    }

    objc_msgSend_setDataReference_message_(archiverCopy, v13, v14, v15);
  }

  v17 = objc_msgSend_p_technique(self, v11, v12);
  if (v17 >= 5)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSDImageFill(PersistenceAdditions) saveToArchive:archiver:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFillPersistenceAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 186, 0, "Image fill technique unknown; use default.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
  }

  else
  {
    *(v8 + 16) |= 0x80u;
    *(v8 + 80) = v17;
  }

  v27 = objc_msgSend_p_tintColor(self, v18, v19);

  if (v27)
  {
    v30 = objc_msgSend_p_tintColor(self, v28, v29);
    *(v8 + 16) |= 2u;
    if (!*(v8 + 32))
    {
      v31 = *(v8 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v8 + 32) = MEMORY[0x277C9BAF0](v31);
    }

    TSPTSUColorCopyToMessage();
  }

  v32 = objc_msgSend_storedReferenceColor(self, v28, v29);

  if (v32)
  {
    v35 = objc_msgSend_storedReferenceColor(self, v33, v34);
    *(v8 + 16) |= 0x40u;
    if (!*(v8 + 72))
    {
      v36 = *(v8 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v8 + 72) = MEMORY[0x277C9BAF0](v36);
    }

    TSPTSUColorCopyToMessage();
  }

  objc_msgSend_p_fillSize(self, v33, v34);
  if (v40 != *MEMORY[0x277CBF3A8] || v39 != *(MEMORY[0x277CBF3A8] + 8))
  {
    *(v8 + 16) |= 4u;
    v41 = *(v8 + 40);
    if (!v41)
    {
      v42 = *(v8 + 8);
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = MEMORY[0x277C9BAD0](v42);
      *(v8 + 40) = v41;
    }

    objc_msgSend_fillSize(self, v37, v38);
    *&v43 = v43;
    *(v41 + 16) |= 1u;
    *(v41 + 24) = LODWORD(v43);
    objc_msgSend_fillSize(self, v44, v45);
    v47 = v46;
    *(v41 + 16) |= 2u;
    *(v41 + 28) = v47;
  }

  v48 = objc_msgSend_p_imageData(self, v37, v38);
  shouldBeInterpretedAsGenericIfUntagged = objc_msgSend_tsd_shouldBeInterpretedAsGenericIfUntagged(v48, v49, v50);
  *(v8 + 16) |= 0x100u;
  *(v8 + 84) = shouldBeInterpretedAsGenericIfUntagged;
}

- (TSDImageFill)initWithImageData:(id)data technique:(unint64_t)technique tintColor:(id)color size:(CGSize)size referenceColor:(id)referenceColor
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  colorCopy = color;
  referenceColorCopy = referenceColor;
  if (technique >= 5)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSDImageFill initWithImageData:technique:tintColor:size:referenceColor:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 173, 0, "Invalid image fill technique: %zu Defaulting to natural size.", technique);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v23, v24);
    technique = 0;
  }

  v42.receiver = self;
  v42.super_class = TSDImageFill;
  v25 = [(TSDImageFill *)&v42 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->mImageData, data);
    v26->mTechnique = technique;
    v29 = objc_msgSend_copy(colorCopy, v27, v28);
    mTintColor = v26->mTintColor;
    v26->mTintColor = v29;

    v33 = objc_msgSend_copy(referenceColorCopy, v31, v32);
    mReferenceColor = v26->mReferenceColor;
    v26->mReferenceColor = v33;

    v26->mFillSize.width = width;
    v26->mFillSize.height = height;
    objc_msgSend_fillSize(v26, v35, v36);
    v26->mFillSize.width = v37;
    v26->mFillSize.height = v38;
    objc_msgSend_i_commonInit(v26, v39, v40);
  }

  return v26;
}

- (id)initForUnarchiving
{
  v3.receiver = self;
  v3.super_class = TSDImageFill;
  return [(TSDImageFill *)&v3 init];
}

- (void)i_commonSetup
{
  v3 = dispatch_queue_create("com.apple.iwork.drawing.fills.image", 0);
  mTempRenderLock = self->mTempRenderLock;
  self->mTempRenderLock = v3;

  objc_initWeak(location, self);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = sub_276792C58;
  v45[3] = &unk_27A6CDCE8;
  objc_copyWeak(&v46, location);
  v6 = objc_msgSend_cachedImageWithHandler_(TSDImageFillCachedImage, v5, v45);
  mStandardSizeTintedImage = self->mStandardSizeTintedImage;
  self->mStandardSizeTintedImage = v6;

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_276792CAC;
  v43[3] = &unk_27A6CDCE8;
  objc_copyWeak(&v44, location);
  v9 = objc_msgSend_cachedImageWithHandler_(TSDImageFillCachedImage, v8, v43);
  mHalfSizeTintedImage = self->mHalfSizeTintedImage;
  self->mHalfSizeTintedImage = v9;

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_276792D00;
  v41[3] = &unk_27A6CDCE8;
  objc_copyWeak(&v42, location);
  v12 = objc_msgSend_cachedImageWithHandler_(TSDImageFillCachedImage, v11, v41);
  mQuarterSizeTintedImage = self->mQuarterSizeTintedImage;
  self->mQuarterSizeTintedImage = v12;

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_276792D54;
  v39[3] = &unk_27A6CDCE8;
  objc_copyWeak(&v40, location);
  v15 = objc_msgSend_cachedImageWithHandler_(TSDImageFillCachedImage, v14, v39);
  mStandardSizeTintedHDRImage = self->mStandardSizeTintedHDRImage;
  self->mStandardSizeTintedHDRImage = v15;

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_276792DA8;
  v37[3] = &unk_27A6CDCE8;
  objc_copyWeak(&v38, location);
  v18 = objc_msgSend_cachedImageWithHandler_(TSDImageFillCachedImage, v17, v37);
  mHalfSizeTintedHDRImage = self->mHalfSizeTintedHDRImage;
  self->mHalfSizeTintedHDRImage = v18;

  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = sub_276792DFC;
  v35 = &unk_27A6CDCE8;
  objc_copyWeak(&v36, location);
  v21 = objc_msgSend_cachedImageWithHandler_(TSDImageFillCachedImage, v20, &v32);
  mQuarterSizeTintedHDRImage = self->mQuarterSizeTintedHDRImage;
  self->mQuarterSizeTintedHDRImage = v21;

  v25 = objc_msgSend_sharedManager(MEMORY[0x277D811D8], v23, v24, v32, v33, v34, v35);
  objc_msgSend_addObject_(v25, v26, self->mStandardSizeTintedImage);
  objc_msgSend_addObject_(v25, v27, self->mHalfSizeTintedImage);
  objc_msgSend_addObject_(v25, v28, self->mQuarterSizeTintedImage);
  objc_msgSend_addObject_(v25, v29, self->mStandardSizeTintedHDRImage);
  objc_msgSend_addObject_(v25, v30, self->mHalfSizeTintedHDRImage);
  objc_msgSend_addObject_(v25, v31, self->mQuarterSizeTintedHDRImage);

  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v46);
  objc_destroyWeak(location);
}

- (void)i_commonInit
{
  objc_msgSend_i_commonSetup(self, a2, v2);

  objc_msgSend_i_updateStoredReferenceColorIfNeeded(self, v4, v5);
}

- (void)dealloc
{
  if (self->mImageData && self->mHasIndicatedInterestInProvider)
  {
    v4 = objc_msgSend_sharedPool(TSDImageProviderPool, a2, v2);
    objc_msgSend_removeInterestInProviderForData_(v4, v5, self->mImageData);
  }

  CGImageRelease(self->mTempRenderCopy);
  v8 = objc_msgSend_sharedManager(MEMORY[0x277D811D8], v6, v7);
  objc_msgSend_removeObject_(v8, v9, self->mStandardSizeTintedImage);
  objc_msgSend_removeObject_(v8, v10, self->mHalfSizeTintedImage);
  objc_msgSend_removeObject_(v8, v11, self->mQuarterSizeTintedImage);
  objc_msgSend_removeObject_(v8, v12, self->mStandardSizeTintedHDRImage);
  objc_msgSend_removeObject_(v8, v13, self->mHalfSizeTintedHDRImage);
  objc_msgSend_removeObject_(v8, v14, self->mQuarterSizeTintedHDRImage);

  v15.receiver = self;
  v15.super_class = TSDImageFill;
  [(TSDImageFill *)&v15 dealloc];
}

- (void)p_clearTintedImageCache
{
  objc_msgSend_flush(self->mStandardSizeTintedImage, a2, v2);
  objc_msgSend_flush(self->mHalfSizeTintedImage, v4, v5);
  objc_msgSend_flush(self->mQuarterSizeTintedImage, v6, v7);
  objc_msgSend_flush(self->mStandardSizeTintedHDRImage, v8, v9);
  objc_msgSend_flush(self->mHalfSizeTintedHDRImage, v10, v11);
  mQuarterSizeTintedHDRImage = self->mQuarterSizeTintedHDRImage;

  objc_msgSend_flush(mQuarterSizeTintedHDRImage, v12, v13);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_allocWithZone_(TSDMutableImageFill, a2, zone);
  mImageData = self->mImageData;
  objc_msgSend_fillSize(self, v6, v7);

  return MEMORY[0x2821F9670](v4, sel_initWithImageData_technique_tintColor_size_referenceColor_, mImageData);
}

- (void)p_setTechnique:(unint64_t)technique
{
  techniqueCopy = technique;
  if (technique >= 5)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageFill p_setTechnique:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 300, 0, "Invalid image fill technique: %zu Defaulting to natural size.", techniqueCopy);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v10, v11);
    techniqueCopy = 0;
  }

  self->mTechnique = techniqueCopy;
}

- (CGSize)p_fillSize
{
  width = self->mFillSize.width;
  height = self->mFillSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithNewImageData:(id)data
{
  dataCopy = data;
  if (objc_msgSend_technique(self, v5, v6) == 2)
  {
    objc_msgSend_fillSize(self, v7, v8);
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v13 = objc_msgSend_sharedPool(TSDImageProviderPool, v7, v8);
    v15 = objc_msgSend_providerForData_shouldValidate_(v13, v14, dataCopy, 1);

    objc_msgSend_naturalSize(v15, v16, v17);
    v10 = v18;
    v12 = v19;
  }

  v20 = [TSDImageFill alloc];
  v23 = objc_msgSend_technique(self, v21, v22);
  v26 = objc_msgSend_tintColor(self, v24, v25);
  v28 = objc_msgSend_initWithImageData_technique_tintColor_size_(v20, v27, dataCopy, v23, v26, v10, v12);

  return v28;
}

- (BOOL)canCopyData
{
  v4 = objc_msgSend_imageData(self, a2, v2);
  if (objc_msgSend_needsDownload(v4, v5, v6))
  {
    v9 = objc_msgSend_imageData(self, v7, v8);
    isApplicationData = objc_msgSend_isApplicationData(v9, v10, v11);
  }

  else
  {
    isApplicationData = 1;
  }

  return isApplicationData;
}

- (CGSize)p_imageDataNaturalSize
{
  v4 = objc_msgSend_p_validatedImageProvider(self, a2, v2);
  objc_msgSend_naturalSize(v4, v5, v6);
  v8 = v7;
  v10 = v9;

  v11 = *MEMORY[0x277CBF3A8];
  v12 = *(MEMORY[0x277CBF3A8] + 8);
  if (v8 == *MEMORY[0x277CBF3A8] && v10 == v12)
  {
    objc_opt_class();
    v16 = objc_msgSend_imageData(self, v14, v15);
    v19 = objc_msgSend_attributes(v16, v17, v18);
    v20 = TSUDynamicCast();

    if (objc_msgSend_hasPixelSize(v20, v21, v22))
    {
      objc_msgSend_pixelSize(v20, v23, v24);
      v8 = v25;
      v10 = v26;
    }

    else
    {
      v27 = objc_msgSend_imageData(self, v23, v24);
      isApplicationData = objc_msgSend_isApplicationData(v27, v28, v29);

      if (isApplicationData)
      {
        v33 = objc_msgSend_imageData(self, v31, v32);
        objc_msgSend_pixelSize(v33, v34, v35);
        v8 = v36;
        v10 = v37;

        if (v8 != v11 || v10 != v12)
        {
          if (v20)
          {
            v41 = objc_msgSend_copyWithPixelSize_(v20, v38, v39, v8, v10);

            v20 = v41;
          }

          else
          {
            v44 = [TSDImageDataAttributes alloc];
            v20 = objc_msgSend_initWithPixelSize_(v44, v45, v46, v8, v10);
          }

          v47 = objc_msgSend_imageData(self, v42, v43);
          objc_msgSend_setAttributes_(v47, v48, v20);
        }
      }
    }
  }

  v49 = v8;
  v50 = v10;
  result.height = v50;
  result.width = v49;
  return result;
}

- (double)scale
{
  objc_msgSend_p_imageDataNaturalSize(self, a2, v2);
  if (v7 == 0.0)
  {
    return 1.0;
  }

  v8 = v6;
  if (v6 == 0.0)
  {
    return 1.0;
  }

  v9 = v7;
  objc_msgSend_fillSize(self, v4, v5);
  v11 = v10 / v8;
  objc_msgSend_fillSize(self, v12, v13);
  return fmin(v11, v14 / v9);
}

- (CGSize)fillSize
{
  p_mFillSize = &self->mFillSize;
  width = self->mFillSize.width;
  height = self->mFillSize.height;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    v8 = objc_msgSend_imageData(self, a2, v2);
    isApplicationData = objc_msgSend_isApplicationData(v8, v9, v10);

    if (isApplicationData)
    {
      objc_msgSend_p_setFillSizeForApplicationData(self, v12, v13);
      width = p_mFillSize->width;
      height = p_mFillSize->height;
    }

    else
    {
      v14 = objc_msgSend_p_validatedImageProvider(self, v12, v13);
      objc_msgSend_dpiAdjustedNaturalSize(v14, v15, v16);
      width = v17;
      height = v18;
    }
  }

  v19 = width;
  v20 = height;
  result.height = v20;
  result.width = v19;
  return result;
}

- (BOOL)isOpaque
{
  v4 = objc_msgSend_p_validatedImageProvider(self, a2, v2);
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = objc_msgSend_tintColor(self, v6, v7);
  if (v10)
  {
    v11 = objc_msgSend_tintColor(self, v8, v9);
    objc_msgSend_alphaComponent(v11, v12, v13);
    v15 = v14 == 1.0;
  }

  else
  {
    v15 = 0;
  }

  v18 = objc_msgSend_isOpaque(v5, v16, v17) | v15;
  return v18 & 1;
}

- (void)p_setFillSizeForApplicationData
{
  v10 = objc_msgSend_p_validatedImageProvider(self, a2, v2);
  objc_opt_class();
  v4 = TSUDynamicCast();
  v7 = v4;
  if (v4)
  {
    objc_msgSend_dpiAdjustedFillSize(v4, v5, v6);
  }

  else
  {
    objc_msgSend_p_imageDataNaturalSize(self, v5, v6);
  }

  self->mFillSize.width = v8;
  self->mFillSize.height = v9;
}

- (id)imageDataAtFillSize
{
  v4 = objc_msgSend_imageData(self, a2, v2);
  objc_msgSend_fillSize(self, v5, v6);
  v8 = v7;
  v10 = v9;
  if ((objc_msgSend_isReadable(v4, v11, v12) & 1) == 0)
  {
    v15 = objc_msgSend_fallbackColor(v4, v13, v14);

    if (v15)
    {
      if (TSUSizeIsEmpty())
      {
        v16 = 1.0;
        v17 = 0.0;
        v18 = 0.0;
        v19 = 1.0;
      }

      else
      {
        TSURectWithSize();
        v17 = v20;
        v18 = v21;
        v16 = v22;
        v19 = v23;
      }

      v24 = TSDBitmapContextCreate(3, v16, v19);
      v27 = objc_msgSend_fallbackColor(v4, v25, v26);
      objc_msgSend_paintRect_inContext_(v27, v28, v24, v17, v18, v16, v19);

      Image = CGBitmapContextCreateImage(v24);
      if (Image)
      {
        v31 = Image;
        v32 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v30, Image);
        v33 = MEMORY[0x277D80828];
        v36 = objc_msgSend_PNGRepresentation(v32, v34, v35);
        v39 = objc_msgSend_filename(v4, v37, v38);
        v41 = objc_msgSend_readOnlyDataFromNSData_filename_(v33, v40, v36, v39);

        CGImageRelease(v31);
        v4 = v41;
      }

      CGContextRelease(v24);
    }
  }

  if (!objc_msgSend_technique(self, v13, v14) || objc_msgSend_technique(self, v42, v43) == 2)
  {
    v44 = objc_msgSend_sharedPool(TSDImageProviderPool, v42, v43);
    v46 = objc_msgSend_providerForData_shouldValidate_(v44, v45, v4, 1);

    objc_msgSend_naturalSize(v46, v47, v48);
    if (v52 != v8 || v51 != v10)
    {
      if (TSDPlatformRisksMemoryCrashFromLargeImages() && v8 * v10 > TSDMaxPixelAreaForiOSImages())
      {
        TSDMaxPixelAreaForiOSImages();
        TSUShrinkSizeToFitInArea();
        TSUFlooredSize();
        v8 = v54;
        v10 = v55;
      }

      v56 = [TSDImageResamplingOperation alloc];
      v58 = objc_msgSend_initWithImageProvider_desiredSize_(v56, v57, v46, v8, v10);
      v61 = objc_msgSend_filename(v4, v59, v60);
      objc_msgSend_setDisplayName_(v58, v62, v61);

      v64 = objc_msgSend_performResampleOperationWithResampleOptions_bitmapContextOptions_(v58, v63, 10, 11);
      v65 = v64;
      if (v64)
      {
        v66 = v64;

        v4 = v66;
      }
    }

    v67 = objc_msgSend_sharedPool(TSDImageProviderPool, v49, v50);
    v69 = objc_msgSend_providerForData_shouldValidate_(v67, v68, v4, 1);

    objc_msgSend_naturalSize(v69, v70, v71);
    if (v75 != v8 || v74 != v10)
    {
      objc_msgSend_naturalSize(v69, v72, v73);
      v78 = v77;
      v80 = v79;
      TSUCeilSize();
      if (v78 != v83 || v80 != v82)
      {
        v84 = MEMORY[0x277D81150];
        v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v81, "[TSDImageFill imageDataAtFillSize]");
        v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
        v97.width = v8;
        v97.height = v10;
        v88 = NSStringFromCGSize(v97);
        objc_msgSend_naturalSize(v69, v89, v90);
        v91 = NSStringFromCGSize(v98);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v84, v92, v85, v87, 449, 0, "Fill size is incorrect. Expected %@ received %@", v88, v91);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94);
      }
    }
  }

  return v4;
}

- (void)i_setStoredReferenceColor:(id)color
{
  v4 = objc_msgSend_copy(color, a2, color);
  mReferenceColor = self->mReferenceColor;
  self->mReferenceColor = v4;
}

- (id)referenceColor
{
  v4 = objc_msgSend_storedReferenceColor(self, a2, v2);
  if (!v4)
  {
    objc_msgSend_p_updateCachedReferenceColorIfNeeded(self, v5, v6);
    v4 = self->mCachedReferenceColor;
  }

  return v4;
}

- (id)p_calculateReferenceColor
{
  if (self->mShouldSkipFurtherAttemptsToCalculateReferenceColor)
  {
    v3 = 0;
  }

  else
  {
    v5 = objc_msgSend_p_validatedImageProvider(self, a2, v2);
    if (objc_msgSend_isError(v5, v6, v7))
    {
      v10 = objc_msgSend_p_imageData(self, v8, v9);
      v13 = objc_msgSend_fallbackColor(v10, v11, v12);

      v16 = objc_msgSend_p_imageData(self, v14, v15);
      v19 = v16;
      if (v13)
      {
        v20 = objc_msgSend_fallbackColor(v16, v17, v18);

        v23 = objc_msgSend_tintColor(self, v21, v22);
        v25 = v23;
        if (v23)
        {
          v26 = objc_msgSend_colorByCompositingSourceOverDestinationColor_(v23, v24, v20);
        }

        else
        {
          v26 = v20;
        }

        v3 = v26;
      }

      else
      {
        if (v16)
        {
          v49 = objc_msgSend_p_imageData(self, v17, v18);
          self->mShouldSkipFurtherAttemptsToCalculateReferenceColor = objc_msgSend_needsDownload(v49, v50, v51) ^ 1;
        }

        else
        {
          self->mShouldSkipFurtherAttemptsToCalculateReferenceColor = 0;
        }

        v3 = 0;
      }
    }

    else
    {
      objc_msgSend_fillSize(self, v8, v9);
      v28 = v27;
      v30 = v29;
      IsEmpty = TSUSizeIsEmpty();
      v34 = IsEmpty;
      if (IsEmpty)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSDImageFill p_calculateReferenceColor]");
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 493, 0, "Non-error provider has zero size.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
      }

      v3 = objc_msgSend_clearColor(MEMORY[0x277D81180], v32, v33);
      if ((v34 & 1) == 0)
      {
        v42 = TSDBitmapContextCreate(3, 1.0, 1.0);
        if (v42)
        {
          v44 = v42;
          Mutable = CGPathCreateMutable();
          if (Mutable)
          {
            v47 = Mutable;
            TSURectWithSize();
            CGPathAddRectSafe();
            CGContextScaleCTM(v44, 1.0 / v28, 1.0 / v30);
            objc_msgSend_paintPath_inContext_(self, v48, v47, v44);
            CGPathRelease(v47);
          }

          else
          {
            v59 = MEMORY[0x277D81150];
            v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSDImageFill p_calculateReferenceColor]");
            v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v63, v60, v62, 502, 0, "invalid nil value for '%{public}s'", "path");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65);
          }

          Data = CGBitmapContextGetData(v44);
          if (Data)
          {
            v69 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D81180], v67, v68, BYTE2(*Data) / 255.0, BYTE1(*Data) / 255.0, *Data / 255.0, 1.0);

            v3 = v69;
          }

          CGContextRelease(v44);
        }

        else
        {
          v52 = MEMORY[0x277D81150];
          v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSDImageFill p_calculateReferenceColor]");
          v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v53, v55, 499, 0, "invalid nil value for '%{public}s'", "smallContext");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
        }
      }
    }
  }

  return v3;
}

- (void)i_updateStoredReferenceColorIfNeeded
{
  if (!self->mReferenceColor)
  {
    v4 = objc_msgSend_p_calculateReferenceColor(self, a2, v2);
    mReferenceColor = self->mReferenceColor;
    self->mReferenceColor = v4;
  }
}

- (void)p_updateCachedReferenceColorIfNeeded
{
  if (!self->mCachedReferenceColor)
  {
    obj = self;
    objc_sync_enter(obj);
    if (!self->mCachedReferenceColor)
    {
      v5 = objc_msgSend_p_calculateReferenceColor(obj, v3, v4);
      mCachedReferenceColor = self->mCachedReferenceColor;
      self->mCachedReferenceColor = v5;
    }

    objc_sync_exit(obj);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v28 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUDynamicCast();
    if (v5)
    {
      v8 = v5;
      v9 = objc_msgSend_imageData(self, v6, v7);
      v14 = objc_msgSend_imageData(v8, v10, v11);
      if ((!(v9 | v14) || objc_msgSend_isEqual_(v9, v12, v14)) && (v15 = objc_msgSend_technique(self, v12, v13), v15 == objc_msgSend_technique(v8, v16, v17)))
      {
        v20 = objc_msgSend_tintColor(self, v18, v19);
        v25 = objc_msgSend_tintColor(v8, v21, v22);
        if (v20 | v25 && !objc_msgSend_isEqual_(v20, v23, v25))
        {
          v28 = 0;
        }

        else
        {
          objc_msgSend_fillSize(self, v23, v24);
          objc_msgSend_fillSize(v8, v26, v27);
          v28 = TSUNearlyEqualSizes();
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

- (BOOL)drawsInOneStep
{
  if (self->mTintColor)
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = objc_msgSend_p_validatedImageProvider(self, a2, v2);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & (self->mTechnique != 2);
}

- (BOOL)canApplyToRenderable
{
  if (self->mTintColor || (self->mTechnique | 2) == 2)
  {
    return 0;
  }

  objc_opt_class();
  v7 = objc_msgSend_p_validatedImageProvider(self, v5, v6);
  v8 = TSUDynamicCast();

  if (v8)
  {
    v3 = objc_msgSend_orientation(v8, v9, v10) == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)canApplyToRenderableByAddingSubrenderables
{
  if (self->mTintColor || self->mTechnique == 2)
  {
    return 0;
  }

  objc_opt_class();
  v7 = objc_msgSend_p_validatedImageProvider(self, v5, v6);
  v8 = TSUDynamicCast();

  if (v8)
  {
    v3 = objc_msgSend_orientation(v8, v9, v10) == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)p_shouldApplyTintedImage
{
  v6 = objc_msgSend_p_standardSizeCachedImage(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_tintColor(self, v4, v5);
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)p_cachedImageForSize:(CGSize)size renderingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_msgSend_wantsHDR(configurationCopy, v6, v7))
  {
    v10 = objc_msgSend_p_validatedImageProvider(self, v8, v9);
    v13 = objc_msgSend_prefersHDRRendering(v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  if ((objc_msgSend_isForPrinting(configurationCopy, v8, v9) & 1) != 0 || objc_msgSend_isForPDF(configurationCopy, v14, v15))
  {
    if (v13)
    {
LABEL_7:
      v16 = objc_msgSend_p_standardSizeCachedHDRImage(self, v14, v15);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  objc_msgSend_contentsScale(configurationCopy, v14, v15);
  TSUMultiplySizeScalar();
  objc_msgSend_additionalScale(configurationCopy, v17, v18);
  TSUMultiplySizeScalar();
  v20 = v19;
  v22 = v21;
  objc_msgSend_fillSize(self, v23, v24);
  if (TSDPlatformRisksMemoryCrashFromLargeImages())
  {
    TSDMaxPixelAreaForiOSImages();
    TSUShrinkSizeToFitInArea();
    TSUFlooredSize();
  }

  TSUMultiplySizeScalar();
  if (v20 <= v28 && v22 <= v27)
  {
    if (v13)
    {
      objc_msgSend_p_quarterSizeCachedHDRImage(self, v25, v26);
    }

    else
    {
      objc_msgSend_p_quarterSizeCachedImage(self, v25, v26);
    }

    v16 = LABEL_14:;
    goto LABEL_18;
  }

  TSUMultiplySizeScalar();
  if (v20 <= v29)
  {
    if (v13)
    {
      objc_msgSend_p_halfSizeCachedHDRImage(self, v14, v15);
    }

    else
    {
      objc_msgSend_p_halfSizeCachedImage(self, v14, v15);
    }

    goto LABEL_14;
  }

  if (v13)
  {
    goto LABEL_7;
  }

LABEL_17:
  v16 = objc_msgSend_p_standardSizeCachedImage(self, v14, v15);
LABEL_18:
  v30 = v16;

  return v30;
}

- (CGSize)renderedImageSizeForObjectSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v7 = objc_msgSend_technique(self, a2, v3);
  v10 = 0.0;
  if (v7 > 2)
  {
    v11 = 0.0;
    if ((v7 - 3) < 2)
    {
      objc_msgSend_fillSize(self, v8, v9, 0.0, 0.0);
      objc_msgSend_technique(self, v12, v13);
      TSUFitOrFillSizeInSize();
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_5;
    }

    if (v7 == 1)
    {
      v10 = height;
      v11 = width;
      goto LABEL_9;
    }

    v11 = 0.0;
    if (v7 == 2)
    {
LABEL_5:
      objc_msgSend_fillSize(self, v8, v9);
    }
  }

LABEL_9:
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)drawSwatchInRect:(CGRect)rect inContext:(CGContext *)context
{
  if (context)
  {
    Mutable = CGPathCreateMutable();
    CGPathAddRectSafe();
    objc_msgSend_paintPath_inContext_(self, v7, Mutable, context);

    CGPathRelease(Mutable);
  }

  else
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageFill drawSwatchInRect:inContext:]", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 853, 0, "invalid nil value for '%{public}s'", "ctx");

    v15 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v15, v13, v14);
  }
}

- (CGSize)p_sizeOfFillImageForDestRect:(CGRect)rect inContext:(CGContext *)context
{
  v6 = objc_msgSend_technique(self, a2, context);
  objc_msgSend_fillSize(self, v7, v8);
  if (v6 != 2)
  {
    objc_msgSend_p_drawnRectForImageSize_destRect_inContext_(self, v9, context);
    v10 = v12;
    v11 = v13;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (void)p_paintPath:(CGPath *)path inContext:(CGContext *)context rectForFill:(CGRect)fill
{
  if (path)
  {
    if (context)
    {
      height = fill.size.height;
      width = fill.size.width;
      y = fill.origin.y;
      x = fill.origin.x;
      v12 = objc_msgSend_p_validatedImageProvider(self, a2, path);
      if (!v12)
      {
LABEL_35:

        return;
      }

      v129 = v12;
      CGContextSaveGState(context);
      CGContextBeginPath(context);
      CGContextAddPathSafe();
      CGContextClip(context);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = TSDCGContextGetBitmapQualityInfo(context);

        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }

      v131.origin.x = x;
      v131.origin.y = y;
      v131.size.width = width;
      v131.size.height = height;
      if (CGRectIsNull(v131))
      {
        PathBoundingBox = CGPathGetPathBoundingBox(path);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;
        width = PathBoundingBox.size.width;
        height = PathBoundingBox.size.height;
      }

      v32 = objc_msgSend_tintColor(self, v30, v31);
      v35 = v32;
      if (v32 != 0 && v14)
      {
        isError = objc_msgSend_isError(v129, v33, v34);

        if ((isError & 1) == 0)
        {
          v37 = [TSDImageRenderingConfiguration alloc];
          v39 = objc_msgSend_initWithCGContext_(v37, v38, context);
          objc_msgSend_p_sizeOfFillImageForDestRect_inContext_(self, v40, context, x, y, width, height);
          v42 = objc_msgSend_p_cachedImageForSize_renderingConfiguration_(self, v41, v39);
          v45 = objc_msgSend_image(v42, v43, v44);
          v48 = objc_msgSend_CGImage(v45, v46, v47);

          objc_msgSend_p_drawBitmapImage_withOrientation_inContext_bounds_(self, v49, v48, 0, context, x, y, width, height);
          if (objc_msgSend_prefersHDRRendering(v129, v50, v51) && (TSUCGImageWantsHDRRendering() & 1) == 0)
          {
            TSDCGContextMarkTonemappedHDRContentToSDR(context, 1);
          }

          goto LABEL_33;
        }
      }

      else
      {
      }

      CGContextSaveGState(context);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52 = v129;
        v53 = [TSDImageRenderingConfiguration alloc];
        v55 = objc_msgSend_initWithCGContext_(v53, v54, context);
        objc_msgSend_p_sizeOfFillImageForDestRect_inContext_(self, v56, context, x, y, width, height);
        v60 = objc_msgSend_CGImageForSize_withRenderingConfiguration_(v52, v57, v55);
        if (v14)
        {
          v61 = objc_msgSend_orientation(v52, v58, v59);
          objc_msgSend_p_drawBitmapImage_withOrientation_inContext_bounds_(self, v62, v60, v61, context, x, y, width, height);
        }

        else
        {
          objc_msgSend_p_drawBitmapImage_withOrientation_inContext_bounds_(self, v58, v60, 0, context, x, y, width, height);
        }

        if (objc_msgSend_prefersHDRRendering(v52, v63, v64) && (TSUCGImageWantsHDRRendering() & 1) == 0)
        {
          TSDCGContextMarkTonemappedHDRContentToSDR(context, 1);
        }

        goto LABEL_30;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_p_drawPDFWithProvider_inContext_bounds_(self, v65, v129, context, x, y, width, height);
        goto LABEL_30;
      }

      v84 = objc_msgSend_imageData(self, v65, v66);
      v87 = objc_msgSend_needsDownload(v84, v85, v86);

      if (!v87)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_p_drawnRectForImageSize_destRect_inContext_(self, v102, context, width, height, x, y, width, height);
          objc_msgSend_drawImageInContext_rect_(v129, v103, context);
        }

        else
        {
          v104 = MEMORY[0x277D81150];
          v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "[TSDImageFill p_paintPath:inContext:rectForFill:]");
          v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
          v110 = objc_msgSend_imageData(self, v108, v109);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v104, v111, v105, v107, 967, 0, "can't draw TSPData with unknown image type: %@", v110);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v112, v113);
        }

        goto LABEL_30;
      }

      v90 = objc_msgSend_imageData(self, v88, v89);
      TSDCGContextAddDataRenderedNeedsDownload(context, v90);

      v93 = objc_msgSend_fallbackColor(self->mImageData, v91, v92);
      v96 = v93;
      if (v93)
      {
        objc_msgSend_paintPath_inContext_(v93, v94, path, context);
        v99 = objc_msgSend_tintColor(self, v97, v98);
        v101 = v99;
        if (!v99)
        {
LABEL_48:

LABEL_49:
LABEL_30:
          CGContextRestoreGState(context);
          if (v14)
          {
            goto LABEL_34;
          }

          v69 = objc_msgSend_tintColor(self, v67, v68);

          if (!v69)
          {
            goto LABEL_34;
          }

          objc_msgSend_fillSize(self, v70, v71);
          objc_msgSend_p_drawnRectForImageSize_destRect_inContext_(self, v72, context);
          v74 = v73;
          v76 = v75;
          v78 = v77;
          v80 = v79;
          v39 = objc_msgSend_tintColor(self, v81, v82);
          objc_msgSend_paintRect_inContext_(v39, v83, context, v74, v76, v78, v80);
LABEL_33:

LABEL_34:
          CGContextRestoreGState(context);
          v12 = v129;
          goto LABEL_35;
        }
      }

      else
      {
        v114 = objc_msgSend_referenceColor(self, v94, v95);

        if (!v114)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_p_drawnRectForImageSize_destRect_inContext_(self, v117, context, width, height, x, y, width, height);
            objc_msgSend_drawImageInContext_rect_(v129, v118, context);
          }

          else
          {
            v119 = MEMORY[0x277D81150];
            v120 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, "[TSDImageFill p_paintPath:inContext:rectForFill:]");
            v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
            v125 = objc_msgSend_imageData(self, v123, v124);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v119, v126, v120, v122, 952, 0, "can't draw TSPData with unknown image type: %@", v125);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v127, v128);
          }

          goto LABEL_49;
        }

        v99 = objc_msgSend_referenceColor(self, v115, v116);
        v101 = v99;
      }

      objc_msgSend_paintPath_inContext_(v99, v100, path, context);
      goto LABEL_48;
    }
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageFill p_paintPath:inContext:rectForFill:]", fill.origin.x, fill.origin.y, fill.size.width, fill.size.height);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 878, 0, "invalid nil value for '%{public}s'", "path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    if (context)
    {
      return;
    }
  }

  v22 = MEMORY[0x277D81150];
  v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageFill p_paintPath:inContext:rectForFill:]", fill.origin.x, fill.origin.y, fill.size.width, fill.size.height);
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 879, 0, "invalid nil value for '%{public}s'", "ctx");

  v29 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v29, v27, v28);
}

- (void)drawFillInContext:(CGContext *)context rect:(CGRect)rect clippingToPath:(CGPath *)path
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!path)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageFill drawFillInContext:rect:clippingToPath:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 999, 0, "invalid nil value for '%{public}s'", "clippingPath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  if (!CGRectIsNull(v27))
  {
    CGPathGetPathBoundingBox(path);
    if ((TSUNearlyContainsRect() & 1) == 0)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSDImageFill drawFillInContext:rect:clippingToPath:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1001, 0, "rectForFill must equal or contain the path bounds");

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v24, v25);
    }
  }

  MEMORY[0x2821F9670](self, sel_p_paintPath_inContext_rectForFill_, path);
}

- (void)paintPath:(CGPath *)path naturalBounds:(CGRect)bounds inContext:(CGContext *)context isPDF:(BOOL)f
{
  if (!path)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDImageFill paintPath:naturalBounds:inContext:isPDF:]", context, f);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1006, 0, "invalid nil value for '%{public}s'", "path");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  MEMORY[0x2821F9670](self, sel_p_paintPath_inContext_rectForFill_, path);
}

- (id)p_tintedImageWithScale:(double)scale useHDR:(BOOL)r
{
  rCopy = r;
  v6 = objc_msgSend_p_validatedImageProvider(self, a2, r);
  v9 = objc_msgSend_tintColor(self, v7, v8);
  v12 = v9;
  if (v9 && v6)
  {
    isError = objc_msgSend_isError(v6, v10, v11);

    if ((isError & 1) == 0)
    {
      objc_msgSend_naturalSize(v6, v14, v15);
      if (TSDPlatformRisksMemoryCrashFromLargeImages())
      {
        TSDMaxPixelAreaForiOSImages();
        TSUShrinkSizeToFitInArea();
        TSUFlooredSize();
      }

      TSUMultiplySizeScalar();
      TSURoundedSize();
      TSUSizeMax();
      v17 = v16;
      v19 = v18;
      v22 = objc_msgSend_tintColor(self, v20, v21);
      v25 = objc_msgSend_colorRGBSpace(v22, v23, v24);

      v28 = objc_msgSend_tintColor(self, v26, v27);
      v31 = objc_msgSend_CGColor(v28, v29, v30);
      ColorSpace = CGColorGetColorSpace(v31);

      if (ColorSpace)
      {
        v33 = CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelMonochrome;
      }

      else
      {
        v33 = 1;
      }

      objc_opt_class();
      v60 = TSUDynamicCast();
      if (!v60)
      {
        goto LABEL_25;
      }

      v61 = [TSDImageRenderingConfiguration alloc];
      inited = objc_msgSend_initWantsHDR_(v61, v62, rCopy);
      v65 = objc_msgSend_CGImageOfAnySizeWithRenderingConfiguration_(v60, v64, inited);
      v66 = CGImageGetColorSpace(v65);

      if (v66)
      {
        v67 = (CGColorSpaceGetModel(v66) - 4) < 0xFFFFFFFD;
        if (rCopy)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v67 = 1;
        if (rCopy)
        {
          goto LABEL_25;
        }
      }

      if (!v25 && (!v33 || !v67))
      {
        v68 = [TSDImageRenderingConfiguration alloc];
        v70 = objc_msgSend_initWantsHDR_(v68, v69, 0);
        v72 = objc_msgSend_CGImageOfAnySizeWithRenderingConfiguration_(v60, v71, v70);
        v73 = sub_276646E58(v72, 0xB, v17, v19);

LABEL_29:
        TSDCGContextSetShouldRenderHDRContent(v73, rCopy);
        TSURectWithSize();
        v76 = v75;
        v78 = v77;
        v80 = v79;
        v82 = v81;
        CGContextSaveGState(v73);
        objc_msgSend_drawImageInContext_rect_(v6, v83, v73, v76, v78, v80, v82);
        CGContextRestoreGState(v73);
        v86 = objc_msgSend_tintColor(self, v84, v85);
        v89 = objc_msgSend_CGColor(v86, v87, v88);
        CGContextSetFillColorWithColor(v73, v89);

        v94.origin.x = v76;
        v94.origin.y = v78;
        v94.size.width = v80;
        v94.size.height = v82;
        CGContextFillRect(v73, v94);
        Image = CGBitmapContextCreateImage(v73);
        CGContextRelease(v73);

        objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v90, Image);
        goto LABEL_30;
      }

LABEL_25:
      if (rCopy)
      {
        v74 = 107;
      }

      else
      {
        v74 = 43;
      }

      v73 = TSDBitmapContextCreate(v74, v17, v19);
      goto LABEL_29;
    }
  }

  else
  {
  }

  v34 = objc_msgSend_tintColor(self, v14, v15);

  if (!v34)
  {
    v46 = MEMORY[0x277D81150];
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSDImageFill p_tintedImageWithScale:useHDR:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v50, v47, v49, 1081, 0, "Image fill has a null tint color.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v51, v52);
    if (v6)
    {
      goto LABEL_11;
    }

LABEL_15:
    v53 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSDImageFill p_tintedImageWithScale:useHDR:]");
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 1082, 0, "Image provider for image fill could not be validated and is nil.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v58, v59);
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (objc_msgSend_isError(v6, v35, v36))
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "[TSDImageFill p_tintedImageWithScale:useHDR:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 1083, 0, "Image provider has error for image fill.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v43, v44);
  }

  Image = 0;
  objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v37, 0);
  v91 = LABEL_30:;
  CGImageRelease(Image);

  return v91;
}

- (id)p_standardSizeCachedImage
{
  v4 = objc_msgSend_tintColor(self, a2, v2);

  if (v4)
  {
    v5 = self->mStandardSizeTintedImage;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)p_halfSizeCachedImage
{
  v4 = objc_msgSend_tintColor(self, a2, v2);

  if (v4)
  {
    v5 = self->mHalfSizeTintedImage;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)p_quarterSizeCachedImage
{
  v4 = objc_msgSend_tintColor(self, a2, v2);

  if (v4)
  {
    v5 = self->mQuarterSizeTintedImage;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)p_standardSizeCachedHDRImage
{
  v4 = objc_msgSend_tintColor(self, a2, v2);

  if (v4)
  {
    v5 = self->mStandardSizeTintedHDRImage;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)p_halfSizeCachedHDRImage
{
  v4 = objc_msgSend_tintColor(self, a2, v2);

  if (v4)
  {
    v5 = self->mHalfSizeTintedHDRImage;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)p_quarterSizeCachedHDRImage
{
  v4 = objc_msgSend_tintColor(self, a2, v2);

  if (v4)
  {
    v5 = self->mQuarterSizeTintedHDRImage;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  objectCopy = object;
  objc_opt_class();
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSDImageFill mixingTypeWithObject:context:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageFill.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1144, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_imageData(self, v7, v8);
  v19 = objc_msgSend_imageData(v6, v17, v18);
  isEqual = objc_msgSend_isEqual_(v16, v20, v19);

  if (isEqual)
  {
    v24 = 5;
  }

  else
  {
    v24 = TSDMixingTypeBestFromMixingTypes(5, 1);
  }

  v25 = objc_msgSend_technique(self, v22, v23);
  if (v25 != objc_msgSend_technique(v6, v26, v27))
  {
    v24 = TSDMixingTypeBestFromMixingTypes(v24, 2);
  }

  v30 = objc_msgSend_tintColor(self, v28, v29);
  v33 = objc_msgSend_tintColor(v6, v31, v32);

  if (v30 != v33)
  {
    v36 = objc_msgSend_tintColor(self, v34, v35);
    if (v36)
    {
      v39 = v36;
      v40 = objc_msgSend_tintColor(v6, v37, v38);
      if (v40)
      {
        v43 = v40;
        v44 = objc_msgSend_tintColor(self, v41, v42);
        v47 = objc_msgSend_tintColor(v6, v45, v46);
        v49 = objc_msgSend_isEqual_(v44, v48, v47);

        if (v49)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v24 = TSDMixingTypeBestFromMixingTypes(v24, 3);
  }

LABEL_15:

  return v24;
}

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v10 = objc_msgSend_tintColor(self, v8, v9);
  if (v10)
  {

LABEL_4:
    v16 = objc_msgSend_tintColor(self, v13, v14);
    v19 = v16;
    if (v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = objc_msgSend_clearColor(MEMORY[0x277D81180], v17, v18);
    }

    v21 = v20;

    v24 = objc_msgSend_tintColor(v7, v22, v23);
    v27 = v24;
    if (v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = objc_msgSend_clearColor(MEMORY[0x277D81180], v25, v26);
    }

    v29 = v28;

    v15 = objc_msgSend_blendedColorWithFraction_ofColor_(v21, v30, v29, fraction);

    goto LABEL_11;
  }

  v15 = objc_msgSend_tintColor(v7, v11, v12);

  if (v15)
  {
    goto LABEL_4;
  }

LABEL_11:
  objc_msgSend_fillSize(self, v13, v14);
  objc_msgSend_fillSize(v7, v31, v32);
  TSUMixSizes();
  v34 = v33;
  v36 = v35;
  v37 = [TSDImageFill alloc];
  v40 = objc_msgSend_imageData(self, v38, v39);
  v43 = objc_msgSend_technique(self, v41, v42);
  v45 = objc_msgSend_initWithImageData_technique_tintColor_size_(v37, v44, v40, v43, v15, v34, v36);

  return v45;
}

- (NSArray)referencedDataList
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->mImageData)
  {
    v4[0] = self->mImageData;
    v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)p_validatedImageProvider
{
  if (!self->mHasIndicatedInterestInProvider && self->mImageData)
  {
    self->mHasIndicatedInterestInProvider = 1;
    v4 = objc_msgSend_sharedPool(TSDImageProviderPool, a2, v2);
    objc_msgSend_addInterestInProviderForData_(v4, v5, self->mImageData);
  }

  v6 = objc_msgSend_sharedPool(TSDImageProviderPool, a2, v2);
  v8 = v6;
  mImageData = self->mImageData;
  if (mImageData)
  {
    v10 = objc_msgSend_providerForData_shouldValidate_(v6, v7, mImageData, 1);
  }

  else
  {
    v11 = objc_msgSend_null(MEMORY[0x277D80828], v7, 0);
    v10 = objc_msgSend_providerForData_shouldValidate_(v8, v12, v11, 1);
  }

  return v10;
}

- (CGRect)p_drawnRectForImageSize:(CGSize)size destRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11 = objc_msgSend_technique(self, a2, context);
  if ((v11 - 3) < 2)
  {
    objc_msgSend_technique(self, v12, v13);
    TSUFitOrFillSizeInRect();
LABEL_3:
    x = v14;
    y = v15;
    width = v16;
    height = v17;
    goto LABEL_7;
  }

  if (!v11)
  {
    CGContextGetUserSpaceToDeviceSpaceTransform(&v33, context);
    v18 = TSUIsTransformAxisAligned();
    TSUCenterOfRect();
    TSURectWithCenterAndSize();
    x = v19;
    y = v20;
    width = v21;
    height = v22;
    if (v18)
    {
      CGContextConvertRectToDeviceSpace(context, *&v19);
      TSURoundedPoint();
      v24 = v23;
      v26 = v25;
      TSURoundedSize();
      v34.size.width = v27;
      v34.size.height = v28;
      v34.origin.x = v24;
      v34.origin.y = v26;
      *&v14 = CGContextConvertRectToUserSpace(context, v34);
      goto LABEL_3;
    }
  }

LABEL_7:
  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)p_drawBitmapImage:(CGImage *)image withOrientation:(int64_t)orientation inContext:(CGContext *)context bounds:(CGRect)bounds
{
  if (image)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    objc_msgSend_fillSize(self, a2, image);
    v14 = v13;
    v16 = v15;
    objc_msgSend_p_drawnRectForImageSize_destRect_inContext_(self, v17, context);
    v46 = v18;
    v47 = v19;
    v21 = v20;
    v23 = v22;
    v26 = objc_msgSend_technique(self, v24, v25);
    if (v26 > 4 || v26 == 2)
    {
      if (width > v14 || height > v16)
      {
        CGContextTranslateCTM(context, v46, v47);
        CGContextScaleCTM(context, 1.0, -1.0);
        TSURectWithSize();
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v52 = 0u;
        v50 = 0u;
        v51 = 0u;
        TSUImageOrientationTransform();
        memset(&transform, 0, sizeof(transform));
        CGContextConcatCTM(context, &transform);
        transform.a = 0.0;
        *&transform.b = &transform;
        *&transform.c = 0x2020000000;
        mTempRenderLock = self->mTempRenderLock;
        transform.d = 0.0;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_27679641C;
        block[3] = &unk_27A6CCC78;
        block[5] = &transform;
        block[6] = image;
        block[4] = self;
        dispatch_sync(mTempRenderLock, block);
        TSDCGContextDrawTiledImageRecordingMaxHeadroom(context, *(*&transform.b + 24), v36, v38, v40, v42);
        CGImageRelease(*(*&transform.b + 24));
        _Block_object_dispose(&transform, 8);
        return;
      }

      v55.origin.x = v46;
      v55.origin.y = v47;
      v55.size.width = v14;
      v55.size.height = v16;
      MinY = CGRectGetMinY(v55);
      v56.origin.x = v46;
      v56.origin.y = v47;
      v56.size.width = v14;
      v56.size.height = v16;
      MaxY = CGRectGetMaxY(v56);
      CGContextTranslateCTM(context, 0.0, MinY + MaxY);
      CGContextScaleCTM(context, 1.0, -1.0);
      v52 = 0u;
      v50 = 0u;
      v51 = 0u;
      TSUImageOrientationTransform();
      memset(&transform, 0, sizeof(transform));
      CGContextConcatCTM(context, &transform);
      contextCopy2 = context;
      v30 = v46;
      v31 = v47;
      v32 = v14;
      v33 = v16;
    }

    else
    {
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      v27 = CGRectGetMinY(v53);
      v54.origin.x = x;
      v54.origin.y = y;
      v54.size.width = width;
      v54.size.height = height;
      v28 = CGRectGetMaxY(v54);
      CGContextTranslateCTM(context, 0.0, v27 + v28);
      CGContextScaleCTM(context, 1.0, -1.0);
      v52 = 0u;
      v50 = 0u;
      v51 = 0u;
      TSUImageOrientationTransform();
      memset(&transform, 0, sizeof(transform));
      CGContextConcatCTM(context, &transform);
      contextCopy2 = context;
      v30 = v46;
      v31 = v47;
      v32 = v21;
      v33 = v23;
    }

    TSDCGContextDrawImageRecordingMaxHeadroom(contextCopy2, image, v30, v31, v32, v33);
  }
}

- (void)p_drawPDFWithProvider:(id)provider inContext:(CGContext *)context bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v11 = objc_msgSend_CGPDFDocument(provider, a2, provider);
  if (v11)
  {
    Page = CGPDFDocumentGetPage(v11, 1uLL);
    if (Page)
    {
      v13 = Page;
      CGContextSaveGState(context);
      memset(&v47, 0, sizeof(v47));
      v45 = 0.0;
      v46 = 0.0;
      TSDComputeBoxTransformAndSizeForPDFPage(v13, &v47, &v45);
      objc_msgSend_fillSize(self, v14, v15);
      objc_msgSend_p_drawnRectForImageSize_destRect_inContext_(self, v16, context);
      v18 = v17;
      v20 = v19;
      v40 = v21;
      v23 = v22;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      MinY = CGRectGetMinY(v49);
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      MaxY = CGRectGetMaxY(v50);
      CGContextTranslateCTM(context, 0.0, MinY + MaxY);
      CGContextScaleCTM(context, 1.0, -1.0);
      v28 = objc_msgSend_technique(self, v26, v27);
      if (v28 > 4 || v28 == 2)
      {
        v48.width = 1.0;
        v48.height = 1.0;
        CGContextConvertSizeToDeviceSpace(context, v48);
        TSUMultiplySizeScalar();
        TSUCeilSize();
        v31 = TSDBitmapContextCreate(3, v29, v30);
        if (v31)
        {
          v32 = v31;
          v43 = 0u;
          v44 = 0u;
          v42 = 0u;
          TSURectWithSize();
          transform = v47;
          TSDComputeDrawTransformForPDFPage(&transform, &v42, v45, v46, v33, v34, v35, v36);
          *&transform.a = v42;
          *&transform.c = v43;
          *&transform.tx = v44;
          CGContextConcatCTM(v32, &transform);
          CGContextClipToRectSafe();
          CGContextDrawPDFPage(v32, v13);
          Image = CGBitmapContextCreateImage(v32);
          CGContextRelease(v32);
          if (Image)
          {
            v51.origin.x = x;
            v51.origin.y = y;
            v51.size.width = width;
            v51.size.height = height;
            MinX = CGRectGetMinX(v51);
            v52.origin.x = x;
            v52.origin.y = y;
            v52.size.width = width;
            v52.size.height = height;
            v39 = CGRectGetMaxY(v52);
            CGContextTranslateCTM(context, MinX, v39);
            TSURectWithSize();
            CGContextDrawTiledImage(context, v53, Image);
            CGImageRelease(Image);
          }
        }
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
        transform = v47;
        v42 = 0u;
        TSDComputeDrawTransformForPDFPage(&transform, &v42, v45, v46, v18, v20, v40, v23);
        *&transform.a = v42;
        *&transform.c = v43;
        *&transform.tx = v44;
        CGContextConcatCTM(context, &transform);
        CGContextClipToRectSafe();
        CGContextDrawPDFPage(context, v13);
      }

      CGContextRestoreGState(context);
    }
  }
}

@end