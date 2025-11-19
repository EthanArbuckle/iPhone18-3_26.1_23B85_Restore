@interface TSDImageInfo
+ (id)bootstrapPropertyMapForPresetIndex:(unint64_t)a3 inTheme:(id)a4 alternate:(unint64_t)a5;
+ (void)adjustIncomingImageGeometry:(id)a3 maskGeometry:(id)a4 forImageData:(id)a5 maskedWithInstantAlphaPath:(id)a6 withNaturalSize:(CGSize)a7 forTargetImageGeometry:(id)a8 withTargetMaskGeometry:(id)a9;
+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(unint64_t)a5 reservedCount:(unint64_t)a6;
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)canBeDividedIntoCompoundShape;
- (BOOL)canCopyData;
- (BOOL)canResetMediaSize;
- (BOOL)isMasked;
- (BOOL)maskCanBeReset;
- (BOOL)needsDownload;
- (BOOL)p_aspectRatioUnlockedResizeWouldCauseSkew;
- (BOOL)p_canCopy:(id)a3;
- (CGAffineTransform)computeFullTransform;
- (CGPoint)centerForReplacingWithNewMedia;
- (CGSize)defaultOriginalSize;
- (CGSize)naturalSize;
- (CGSize)originalSize;
- (CGSize)rawDataSize;
- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4;
- (NSArray)childInfos;
- (NSSet)infosToObserveForAttachedInfo;
- (TSDImageInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 imageData:(id)a6 originalImageData:(id)a7;
- (TSDImageInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 imageData:(id)a6 thumbnailImageData:(id)a7 originalImageData:(id)a8 imageAdjustments:(id)a9 adjustedImageData:(id)a10 thumbnailAdjustedImageData:(id)a11;
- (TSDInfo)parentInfo;
- (TSDInfoGeometry)geometry;
- (TSPData)imageDataForExport;
- (TSPData)imageDataNonnull;
- (TSUBezierPath)instantAlphaPath;
- (TSUBezierPath)tracedPath;
- (double)descentForInlineLayout;
- (id)defaultMaskInfo;
- (id)defaultMaskInfoWithContext:(id)a3;
- (id)fileDisplayName;
- (id)fileType;
- (id)geometryWithMask;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)objectForProperty:(int)a3;
- (id)p_imageDataForFile;
- (id)pastedPropertyMapForStyle:(id)a3 tailLineEndInfo:(int)a4;
- (id)presetKind;
- (id)promisedDataForType:(id)a3;
- (id)typeName;
- (id)typesToPromiseWhenCopyingSingleDrawable;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (unint64_t)estimatedDataSizeForNewAdjustmentSentToServer;
- (void)dealloc;
- (void)i_forciblyRegenerateThumbnail;
- (void)i_regenerateThumbnailDataIfMissingButExpected;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_forciblyRegenerateThumbnailWhilePreservingOtherData;
- (void)p_setImageData:(id)a3 thumbnailData:(id)a4;
- (void)p_upgradeImageGeometry;
- (void)p_upgradeImageThumbnail;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)scaleDownSizeToFitWithinSize:(CGSize)a3;
- (void)setAdjustedImageData:(id)a3 thumbnailData:(id)a4;
- (void)setBackgroundRemoved:(BOOL)a3;
- (void)setEnhancedImageData:(id)a3;
- (void)setExteriorTextWrap:(id)a3;
- (void)setImageAdjustments:(id)a3;
- (void)setInstantAlphaPath:(id)a3;
- (void)setMaskInfo:(id)a3;
- (void)setNaturalSize:(CGSize)a3;
- (void)setOriginalImageData:(id)a3;
- (void)setParentInfo:(id)a3;
- (void)setShouldTracePDFData:(BOOL)a3;
- (void)setStyle:(id)a3;
- (void)setThumbnailAdjustedImageData:(id)a3;
- (void)setThumbnailImageData:(id)a3;
- (void)updateGeometryToReplaceMediaInfo:(id)a3;
- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)wasRemovedFromDocumentRoot:(id)a3;
- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4;
- (void)willBeRemovedFromDocumentRoot:(id)a3;
@end

@implementation TSDImageInfo

- (void)setThumbnailImageData:(id)a3
{
  v5 = a3;
  if (self->mThumbnailImageData != v5)
  {
    v10 = v5;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->mThumbnailImageData);
    objc_storeStrong(&self->mThumbnailImageData, a3);
    objc_msgSend_didAddReferenceToData_(self, v9, v10);
    v5 = v10;
  }
}

- (void)setThumbnailAdjustedImageData:(id)a3
{
  v5 = a3;
  if (self->mThumbnailAdjustedImageData != v5)
  {
    v10 = v5;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->mThumbnailAdjustedImageData);
    objc_storeStrong(&self->mThumbnailAdjustedImageData, a3);
    objc_msgSend_didAddReferenceToData_(self, v9, v10);
    v5 = v10;
  }
}

- (void)setEnhancedImageData:(id)a3
{
  v5 = a3;
  if (self->mEnhancedImageData != v5)
  {
    v10 = v5;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->mEnhancedImageData);
    objc_storeStrong(&self->mEnhancedImageData, a3);
    objc_msgSend_didAddReferenceToData_(self, v9, v10);
    v5 = v10;
  }
}

- (void)setShouldTracePDFData:(BOOL)a3
{
  if (self->mShouldTracePDFData != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->mShouldTracePDFData = a3;
  }
}

- (void)setBackgroundRemoved:(BOOL)a3
{
  if (self->mBackgroundRemoved != a3)
  {
    objc_msgSend_willModify(self, a2, a3);
    self->mBackgroundRemoved = a3;
  }
}

- (TSDImageInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 imageData:(id)a6 originalImageData:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v31.receiver = self;
  v31.super_class = TSDImageInfo;
  v16 = [(TSDMediaInfo *)&v31 initWithContext:a3 geometry:a4];
  if (v16)
  {
    if (!v12)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDImageInfo initWithContext:geometry:style:imageData:originalImageData:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 141, 0, "invalid nil value for '%{public}s'", "style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_27667C3B8;
    v26[3] = &unk_27A6CC830;
    v27 = v16;
    v28 = v12;
    v29 = v13;
    v30 = v14;
    objc_msgSend_performBlockIgnoringModifications_(v27, v24, v26);
  }

  return v16;
}

- (TSDImageInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 imageData:(id)a6 thumbnailImageData:(id)a7 originalImageData:(id)a8 imageAdjustments:(id)a9 adjustedImageData:(id)a10 thumbnailAdjustedImageData:(id)a11
{
  v33 = a6;
  v17 = a7;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = MEMORY[0x277D80828];
  v22 = a8;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v28 = objc_msgSend_null(v21, v26, v27);
  v30 = objc_msgSend_initWithContext_geometry_style_imageData_originalImageData_(self, v29, v25, v24, v23, v28, v22);

  if (v30)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_27667C5E8;
    v34[3] = &unk_27A6CC858;
    v35 = v30;
    v36 = v33;
    v37 = v17;
    v38 = v18;
    v39 = v19;
    v40 = v20;
    objc_msgSend_performBlockIgnoringModifications_(v35, v31, v34);
  }

  return v30;
}

- (void)dealloc
{
  objc_msgSend_clearBackPointerToParentInfoIfNeeded_(self->mMaskInfo, a2, self);
  v3.receiver = self;
  v3.super_class = TSDImageInfo;
  [(TSDImageInfo *)&v3 dealloc];
}

- (void)setExteriorTextWrap:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_exteriorTextWrap(self, v5, v6);
  objc_msgSend_alphaThreshold(v7, v8, v9);
  v11 = v10;

  v20.receiver = self;
  v20.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v20 setExteriorTextWrap:v4];

  v14 = objc_msgSend_exteriorTextWrap(self, v12, v13);
  objc_msgSend_alphaThreshold(v14, v15, v16);
  v18 = v17;

  if (v11 != v18)
  {
    mTracedPath = self->mTracedPath;
    self->mTracedPath = 0;
  }
}

- (id)presetKind
{
  v3 = *MEMORY[0x277D80B78];
  objc_opt_class();
  v6 = objc_msgSend_style(self, v4, v5);
  v7 = TSUDynamicCast();

  if (v7)
  {
    v10 = objc_msgSend_presetKind(v7, v8, v9);

    v3 = v10;
  }

  return v3;
}

- (TSDInfoGeometry)geometry
{
  v4.receiver = self;
  v4.super_class = TSDImageInfo;
  v2 = [(TSDDrawableInfo *)&v4 geometry];

  return v2;
}

- (TSDInfo)parentInfo
{
  v4.receiver = self;
  v4.super_class = TSDImageInfo;
  v2 = [(TSDDrawableInfo *)&v4 parentInfo];

  return v2;
}

- (void)setParentInfo:(id)a3
{
  v3.receiver = self;
  v3.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v3 setParentInfo:a3];
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  if (objc_msgSend_p_aspectRatioUnlockedResizeWouldCauseSkew(self, a2, v2))
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = TSDImageInfo;
  return [(TSDDrawableInfo *)&v5 canAspectRatioLockBeChangedByUser];
}

- (void)willBeAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_maskInfo(self, v8, v9);
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v10, v11, v7, v6);

  v12.receiver = self;
  v12.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v12 willBeAddedToDocumentRoot:v7 dolcContext:v6];
}

- (void)wasAddedToDocumentRoot:(id)a3 dolcContext:(id)a4
{
  self->mCurrentlyInDocument = 1;
  v6 = a4;
  v7 = a3;
  v10 = objc_msgSend_maskInfo(self, v8, v9);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v10, v11, v7, v6);

  v12.receiver = self;
  v12.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v12 wasAddedToDocumentRoot:v7 dolcContext:v6];
}

- (void)willBeRemovedFromDocumentRoot:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_maskInfo(self, v5, v6);
  objc_msgSend_willBeRemovedFromDocumentRoot_(v7, v8, v4);

  v9.receiver = self;
  v9.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v9 willBeRemovedFromDocumentRoot:v4];
}

- (void)wasRemovedFromDocumentRoot:(id)a3
{
  self->mCurrentlyInDocument = 0;
  v4 = a3;
  v7 = objc_msgSend_maskInfo(self, v5, v6);
  objc_msgSend_wasRemovedFromDocumentRoot_(v7, v8, v4);

  v9.receiver = self;
  v9.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v9 wasRemovedFromDocumentRoot:v4];
}

- (id)typeName
{
  v3 = sub_2767B590C(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_value_table_(v3, v4, @"Image", &stru_28857D120, @"TSDrawables");

  return v5;
}

- (NSArray)childInfos
{
  v4[1] = *MEMORY[0x277D85DE8];
  if (self->mMaskInfo)
  {
    v4[0] = self->mMaskInfo;
    v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 1);
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

- (id)geometryWithMask
{
  mMaskInfo = self->mMaskInfo;
  if (mMaskInfo)
  {
    v5 = objc_msgSend_geometry(mMaskInfo, a2, v2);
    v8 = objc_msgSend_geometry(self, v6, v7);
    v10 = objc_msgSend_geometryWithParentGeometry_(v5, v9, v8);
  }

  else
  {
    v10 = objc_msgSend_geometry(self, a2, v2);
  }

  return v10;
}

- (CGAffineTransform)computeFullTransform
{
  v5 = objc_msgSend_geometryWithMask(self, a3, v3);
  if (v5)
  {
    v9 = v5;
    objc_msgSend_fullTransform(v5, v6, v7);
    v5 = v9;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  v14.receiver = self;
  v14.super_class = TSDImageInfo;
  if ([(TSDDrawableInfo *)&v14 allowsParentGroupToBeResizedWithoutAspectRatioLock])
  {
    v5 = objc_msgSend_maskInfo(self, v3, v4);
    v8 = objc_msgSend_pathSource(v5, v6, v7);

    if (v8)
    {
      v11 = objc_msgSend_conformsToProtocol_(v8, v9, &unk_2885A75B0) ^ 1;
    }

    else
    {
      v11 = 1;
    }

    v12 = (objc_msgSend_p_aspectRatioUnlockedResizeWouldCauseSkew(self, v9, v10) ^ 1) & v11;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)p_aspectRatioUnlockedResizeWouldCauseSkew
{
  v6 = objc_msgSend_maskInfo(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_maskInfo(self, v4, v5);
    v10 = objc_msgSend_geometry(v7, v8, v9);
    v13 = v10;
    if (v10)
    {
      objc_msgSend_transform(v10, v11, v12);
    }

    v14 = TSUIsTransformAxisAlignedWithThreshold() ^ 1;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (NSSet)infosToObserveForAttachedInfo
{
  mMaskInfo = self->mMaskInfo;
  if (mMaskInfo)
  {
    objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], a2, mMaskInfo);
  }

  else
  {
    objc_msgSend_set(MEMORY[0x277CBEB98], a2, 0);
  }
  v3 = ;

  return v3;
}

- (CGSize)targetSizeForImageData:(id)a3 associatedHint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9);

  if (v10 != v7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDImageInfo targetSizeForImageData:associatedHint:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 405, 0, "associated hint is wrong %@", v7);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x3010000000;
  v37 = "";
  v38 = *MEMORY[0x277CBF3A8];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_27667D158;
  v33[3] = &unk_27A6CC718;
  v33[4] = &v34;
  objc_msgSend_performBlockWithTemporaryLayout_(self, v11, v33);
  v19 = TSDTopmostInfoFromInfo(self, 1);
  v22 = objc_msgSend_parentInfo(v19, v20, v21);
  v23 = TSUProtocolCast();

  if (v23)
  {
    objc_msgSend_highestScaleFactorForRenderingDrawableInfo_(v23, v24, self, &unk_2885CEC50);
    v25 = v35;
    if (v26 > 1.0)
    {
      TSUMultiplySizeScalar();
      *(v25 + 4) = v27;
      *(v25 + 5) = v28;
    }
  }

  else
  {
    v25 = v35;
  }

  v29 = v25[4];
  v30 = v25[5];

  _Block_object_dispose(&v34, 8);
  v31 = v29;
  v32 = v30;
  result.height = v32;
  result.width = v31;
  return result;
}

- (BOOL)needsDownload
{
  v4 = objc_msgSend_imageData(self, a2, v2);
  if (objc_msgSend_needsDownload(v4, v5, v6))
  {
    v9 = 1;
  }

  else
  {
    v10 = objc_msgSend_adjustedImageData(self, v7, v8);
    if (objc_msgSend_needsDownload(v10, v11, v12))
    {
      v9 = 1;
    }

    else
    {
      v15 = objc_msgSend_enhancedImageData(self, v13, v14);
      if (objc_msgSend_needsDownload(v15, v16, v17))
      {
        v9 = 1;
      }

      else
      {
        v20 = objc_msgSend_thumbnailImageData(self, v18, v19);
        if (objc_msgSend_needsDownload(v20, v21, v22))
        {
          v9 = 1;
        }

        else
        {
          v25 = objc_msgSend_originalImageData(self, v23, v24);
          v9 = objc_msgSend_needsDownload(v25, v26, v27);
        }
      }
    }
  }

  return v9;
}

- (BOOL)canCopyData
{
  v4 = objc_msgSend_imageData(self, a2, v2);
  if (objc_msgSend_p_canCopy_(self, v5, v4))
  {
    v8 = objc_msgSend_adjustedImageData(self, v6, v7);
    if (objc_msgSend_p_canCopy_(self, v9, v8))
    {
      v12 = objc_msgSend_enhancedImageData(self, v10, v11);
      if (objc_msgSend_p_canCopy_(self, v13, v12))
      {
        v16 = objc_msgSend_thumbnailImageData(self, v14, v15);
        if (objc_msgSend_p_canCopy_(self, v17, v16))
        {
          v20 = objc_msgSend_originalImageData(self, v18, v19);
          canCopy = objc_msgSend_p_canCopy_(self, v21, v20);
        }

        else
        {
          canCopy = 0;
        }
      }

      else
      {
        canCopy = 0;
      }
    }

    else
    {
      canCopy = 0;
    }
  }

  else
  {
    canCopy = 0;
  }

  return canCopy;
}

- (BOOL)p_canCopy:(id)a3
{
  v3 = a3;
  if (objc_msgSend_needsDownload(v3, v4, v5))
  {
    isApplicationData = objc_msgSend_isApplicationData(v3, v6, v7);
  }

  else
  {
    isApplicationData = 1;
  }

  return isApplicationData;
}

- (id)p_imageDataForFile
{
  v4 = objc_msgSend_SVGData(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend_imageData(self, v5, v6);
  }

  v9 = v8;

  return v9;
}

- (id)fileDisplayName
{
  v3 = objc_msgSend_p_imageDataForFile(self, a2, v2);
  v6 = objc_msgSend_filename(v3, v4, v5);

  return v6;
}

- (id)fileType
{
  v3 = objc_msgSend_p_imageDataForFile(self, a2, v2);
  v6 = objc_msgSend_type(v3, v4, v5);

  return v6;
}

- (TSPData)imageDataNonnull
{
  v3 = objc_msgSend_imageData(self, a2, v2);
  if (!v3)
  {
    v3 = objc_msgSend_null(MEMORY[0x277D80828], v4, v5);
  }

  return v3;
}

- (void)p_setImageData:(id)a3 thumbnailData:(id)a4
{
  v7 = a3;
  v9 = a4;
  if (self->mImageData != v7)
  {
    objc_msgSend_willChangeProperty_(self, v8, 529);
    self->mDescentForInlineLayoutValid = 0;
    objc_msgSend_willRemoveReferenceToData_(self, v10, self->mImageData);
    objc_storeStrong(&self->mImageData, a3);
    objc_msgSend_didAddReferenceToData_(self, v11, v7);
    if (v7)
    {
      v12 = [TSDImageDataHelper alloc];
      v14 = objc_msgSend_initWithImageData_(v12, v13, v7);
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&self->mImageDataHelper, v14);
    if (v7)
    {
    }

    objc_msgSend_setThumbnailImageData_(self, v15, v9);
    if (!v9 && self->mImageDataHelper && objc_msgSend_shouldGenerateThumbnails(self, v16, v17))
    {
      objc_initWeak(&location, self);
      mImageDataHelper = self->mImageDataHelper;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_27667D75C;
      v24[3] = &unk_27A6CC880;
      objc_copyWeak(&v25, &location);
      objc_msgSend_generateThumbnailImageDataWithCompletionHandler_(mImageDataHelper, v23, v24);
      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }

    mTracedPath = self->mTracedPath;
    self->mTracedPath = 0;

    self->mNaturalSize = *MEMORY[0x277CBF3A8];
    objc_msgSend_setImageAdjustments_(self, v19, 0);
    objc_msgSend_setAdjustedImageData_(self, v20, 0);
    objc_msgSend_setEnhancedImageData_(self, v21, 0);
  }
}

- (void)i_forciblyRegenerateThumbnail
{
  v4 = objc_msgSend_imageData(self, a2, v2);
  if (v4)
  {
    v7 = v4;
    objc_msgSend_p_setImageData_thumbnailData_(self, v5, 0, 0);
    objc_msgSend_setImageDataNonnull_(self, v6, v7);
    v4 = v7;
  }
}

- (void)p_forciblyRegenerateThumbnailWhilePreservingOtherData
{
  if (!self->mImageDataHelper)
  {
    v3 = [TSDImageDataHelper alloc];
    v5 = objc_msgSend_initWithImageData_(v3, v4, self->mImageData);
    mImageDataHelper = self->mImageDataHelper;
    self->mImageDataHelper = v5;
  }

  objc_initWeak(&location, self);
  v7 = self->mImageDataHelper;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_27667D920;
  v9[3] = &unk_27A6CC880;
  objc_copyWeak(&v10, &location);
  objc_msgSend_generateThumbnailImageDataWithCompletionHandler_(v7, v8, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)setOriginalImageData:(id)a3
{
  v5 = a3;
  if (self->mOriginalImageData != v5)
  {
    v11 = v5;
    objc_msgSend_willChangeProperty_(self, v6, 529);
    self->mDescentForInlineLayoutValid = 0;
    objc_msgSend_willModify(self, v7, v8);
    objc_msgSend_willRemoveReferenceToData_(self, v9, self->mOriginalImageData);
    objc_storeStrong(&self->mOriginalImageData, a3);
    objc_msgSend_didAddReferenceToData_(self, v10, v11);
    v5 = v11;
  }
}

- (TSPData)imageDataForExport
{
  v4 = objc_msgSend_adjustedImageData(self, a2, v2);
  if ((objc_msgSend_needsDownload(v4, v5, v6) & 1) != 0 || (objc_msgSend_null(MEMORY[0x277D80828], v7, v8), v9 = objc_claimAutoreleasedReturnValue(), v9, v4 == v9))
  {
    v10 = objc_msgSend_thumbnailAdjustedImageData(self, v7, v8);

    v4 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_6:
    if ((objc_msgSend_needsDownload(v4, v7, v8) & 1) == 0)
    {
      v11 = objc_msgSend_null(MEMORY[0x277D80828], v7, v8);

      if (v4 != v11)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_8;
  }

  if (v4)
  {
    goto LABEL_6;
  }

LABEL_8:
  v12 = objc_msgSend_imageData(self, v7, v8);

  if ((objc_msgSend_needsDownload(v12, v13, v14) & 1) != 0 || (objc_msgSend_null(MEMORY[0x277D80828], v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v17, v12 == v17))
  {
    v18 = objc_msgSend_thumbnailImageData(self, v15, v16);
    v19 = v18;
    if (v18)
    {
      v20 = v18;

      v12 = v20;
    }
  }

  v4 = v12;
LABEL_14:

  return v4;
}

- (void)setStyle:(id)a3
{
  v5 = a3;
  if (self->mStyle != v5)
  {
    v12 = v5;
    v8 = objc_msgSend_properties(TSDMediaStyle, v6, v7);
    objc_msgSend_willChangeProperties_(self, v9, v8);

    objc_msgSend_willModify(self, v10, v11);
    objc_storeStrong(&self->mStyle, a3);
    v5 = v12;
  }
}

- (id)pastedPropertyMapForStyle:(id)a3 tailLineEndInfo:(int)a4
{
  v4 = objc_msgSend_fullPropertyMap(a3, a2, a3, *&a4);
  v7 = objc_msgSend_copy(v4, v5, v6);

  objc_msgSend_validatePastedPropertyMap_(TSDMediaStyle, v8, v7);

  return v7;
}

- (CGSize)originalSize
{
  if (self->mMaskInfo)
  {
    v3 = objc_msgSend_geometry(self->mMaskInfo, a2, v2);
    objc_msgSend_size(v3, v4, v5);
    v7 = v6;
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TSDImageInfo;
    [(TSDMediaInfo *)&v12 originalSize];
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)defaultOriginalSize
{
  if (self->mMaskInfo)
  {
    v3 = objc_msgSend_geometry(self->mMaskInfo, a2, v2);
    objc_msgSend_size(v3, v4, v5);
    v7 = v6;
    v9 = v8;

    v10 = v7;
    v11 = v9;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = TSDImageInfo;
    [(TSDMediaInfo *)&v12 defaultOriginalSize];
  }

  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)rawDataSize
{
  v7 = objc_msgSend_originalImageData(self, a2, v2);
  if (v7)
  {
    v3 = objc_msgSend_SVGData(self, v5, v6);
    if (!v3)
    {
      v8 = objc_msgSend_originalImageData(self, v5, v6);
LABEL_5:

      goto LABEL_6;
    }
  }

  v8 = objc_msgSend_imageData(self, v5, v6);
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_6:

  v11 = objc_msgSend_sharedPool(TSDImageProviderPool, v9, v10);
  v13 = objc_msgSend_temporaryProviderForData_shouldValidate_(v11, v12, v8, 1);
  objc_msgSend_dpiAdjustedNaturalSize(v13, v14, v15);
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (BOOL)canResetMediaSize
{
  v9.receiver = self;
  v9.super_class = TSDImageInfo;
  v3 = [(TSDMediaInfo *)&v9 canResetMediaSize];
  if (v3)
  {
    objc_msgSend_rawDataSize(self, v4, v5);
    LOBYTE(v3) = v7 != *(MEMORY[0x277CBF3A8] + 8) || v6 != *MEMORY[0x277CBF3A8];
  }

  return v3;
}

- (void)setMaskInfo:(id)a3
{
  v5 = a3;
  if (self->mMaskInfo != v5)
  {
    v29 = v5;
    objc_msgSend_willChangeProperty_(self, v6, 530);
    v9 = objc_msgSend_defaultContext(MEMORY[0x277D805F0], v7, v8);
    v12 = self->mMaskInfo;
    if (self->mCurrentlyInDocument)
    {
      v13 = objc_msgSend_documentRoot(self, v10, v11);
      objc_msgSend_willBeRemovedFromDocumentRoot_(v12, v14, v13);

      v17 = objc_msgSend_documentRoot(self, v15, v16);
      objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v29, v18, v17, v9);
    }

    objc_msgSend_clearBackPointerToParentInfoIfNeeded_(v12, v10, self);
    objc_storeStrong(&self->mMaskInfo, a3);
    objc_msgSend_setParentInfo_(self->mMaskInfo, v19, self);
    if (self->mCurrentlyInDocument)
    {
      v22 = objc_msgSend_documentRoot(self, v20, v21);
      objc_msgSend_wasRemovedFromDocumentRoot_(v12, v23, v22);

      mMaskInfo = self->mMaskInfo;
      v27 = objc_msgSend_documentRoot(self, v25, v26);
      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(mMaskInfo, v28, v27, v9);
    }

    v5 = v29;
  }
}

- (TSUBezierPath)instantAlphaPath
{
  v5 = self->mInstantAlphaPath;
  if (v5)
  {
    objc_msgSend_naturalSize(self, v3, v4);
    if (v8 <= 0.0 || (objc_msgSend_naturalSize(self, v6, v7), v9 <= 0.0))
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDImageInfo instantAlphaPath]");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
      v16 = objc_msgSend_imageData(self, v14, v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v11, v13, 763, 0, "Invalid natural size for image with data %@. Ignoring instant alpha path until this can be resolved, to avoid a crash.", v16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
      v5 = 0;
    }
  }

  return v5;
}

- (void)setInstantAlphaPath:(id)a3
{
  v5 = a3;
  if (self->mInstantAlphaPath != v5)
  {
    v7 = v5;
    objc_msgSend_willChangeProperty_(self, v6, 531);
    objc_storeStrong(&self->mInstantAlphaPath, a3);
    v5 = v7;
  }
}

- (void)setImageAdjustments:(id)a3
{
  v4 = a3;
  v5 = v4;
  mImageAdjustments = self->mImageAdjustments;
  if (v4 | mImageAdjustments)
  {
    v13 = v4;
    isEqual = objc_msgSend_isEqual_(v4, v4, mImageAdjustments);
    v5 = v13;
    if ((isEqual & 1) == 0)
    {
      objc_msgSend_willChangeProperty_(self, v13, 532);
      v10 = objc_msgSend_copy(v13, v8, v9);
      v11 = self->mImageAdjustments;
      self->mImageAdjustments = v10;

      objc_msgSend_setAdjustedImageData_(self, v12, 0);
      v5 = v13;
    }
  }
}

- (void)setAdjustedImageData:(id)a3 thumbnailData:(id)a4
{
  v7 = a3;
  v9 = a4;
  if (self->mAdjustedImageData != v7)
  {
    objc_msgSend_willChangeProperty_(self, v8, 529);
    self->mDescentForInlineLayoutValid = 0;
    objc_msgSend_willRemoveReferenceToData_(self, v10, self->mAdjustedImageData);
    objc_storeStrong(&self->mAdjustedImageData, a3);
    objc_msgSend_didAddReferenceToData_(self, v11, v7);
    mAdjustedImageData = self->mAdjustedImageData;
    if (mAdjustedImageData)
    {
      v13 = [TSDImageDataHelper alloc];
      v15 = objc_msgSend_initWithImageData_(v13, v14, self->mAdjustedImageData);
    }

    else
    {
      v15 = 0;
    }

    objc_storeStrong(&self->mAdjustedImageDataHelper, v15);
    if (mAdjustedImageData)
    {
    }

    objc_msgSend_setThumbnailAdjustedImageData_(self, v16, v9);
    if (!v9 && self->mAdjustedImageDataHelper && objc_msgSend_shouldGenerateThumbnails(self, v17, v18))
    {
      objc_initWeak(&location, self);
      mAdjustedImageDataHelper = self->mAdjustedImageDataHelper;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_27667E400;
      v21[3] = &unk_27A6CC880;
      objc_copyWeak(&v22, &location);
      objc_msgSend_generateThumbnailImageDataWithCompletionHandler_(mAdjustedImageDataHelper, v20, v21);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }
}

- (unint64_t)estimatedDataSizeForNewAdjustmentSentToServer
{
  mAdjustedImageData = self->mAdjustedImageData;
  if (mAdjustedImageData)
  {
    v5 = objc_msgSend_length(mAdjustedImageData, a2, v2);
    v8 = objc_msgSend_length(self->mEnhancedImageData, v6, v7) + v5;
    return v8 + objc_msgSend_length(self->mThumbnailAdjustedImageData, v9, v10);
  }

  else
  {
    v12 = objc_msgSend_length(self->mImageData, a2, v2);
    return objc_msgSend_length(self->mThumbnailImageData, v13, v14) + 2 * v12;
  }
}

- (double)descentForInlineLayout
{
  if (!self->mDescentForInlineLayoutValid)
  {
    v4 = objc_msgSend_originalImageData(self, a2, v2);
    v7 = v4;
    if (!v4 || (objc_msgSend_needsDownload(v4, v5, v6) & 1) != 0 || (v8 = 0.0, objc_msgSend_isReadable(v7, v5, v6)))
    {
      v9 = objc_msgSend_imageData(self, v5, v6);
      v12 = v9;
      if (!v9 || (objc_msgSend_needsDownload(v9, v10, v11) & 1) != 0)
      {

LABEL_14:
        return self->mDescentForInlineLayout;
      }

      v8 = 0.0;
      if (objc_msgSend_isReadable(v12, v13, v14))
      {
        v17 = objc_msgSend_type(v12, v15, v16);
        v20 = objc_msgSend_identifier(*MEMORY[0x277CE1E08], v18, v19);
        v22 = objc_msgSend_tsu_conformsToUTI_(v17, v21, v20);

        if (v22)
        {
          v25 = objc_msgSend_NSData(v12, v23, v24);
          SFUEGOImageGetDescent();
          v8 = v26;
        }
      }
    }

    self->mDescentForInlineLayout = v8;
    self->mDescentForInlineLayoutValid = 1;
    goto LABEL_14;
  }

  return self->mDescentForInlineLayout;
}

- (BOOL)canBeDividedIntoCompoundShape
{
  if (objc_msgSend_isInlineWithText(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_SVGData(self, v4, v5);

  if (!v6)
  {
    return 0;
  }

  v9 = objc_msgSend_SVGData(self, v7, v8);
  v12 = objc_msgSend_needsDownload(v9, v10, v11);

  if (v12)
  {
    return 0;
  }

  v16 = objc_msgSend_SVGData(self, v13, v14);
  isReadable = objc_msgSend_isReadable(v16, v17, v18);

  return isReadable;
}

- (id)objectForProperty:(int)a3
{
  switch(a3)
  {
    case 531:
      v3 = objc_msgSend_instantAlphaPath(self, a2, *&a3);
      break;
    case 530:
      v3 = objc_msgSend_maskInfo(self, a2, *&a3);
      break;
    case 529:
      v3 = objc_msgSend_imageData(self, a2, *&a3);
      break;
    default:
      v5.receiver = self;
      v5.super_class = TSDImageInfo;
      v3 = [(TSDStyledInfo *)&v5 objectForProperty:?];
      break;
  }

  return v3;
}

- (BOOL)isMasked
{
  v3 = objc_msgSend_maskInfo(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (BOOL)maskCanBeReset
{
  if (!objc_msgSend_isMasked(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_maskInfo(self, v4, v5);
  v9 = objc_msgSend_geometry(v6, v7, v8);
  objc_msgSend_position(v9, v10, v11);
  if (v15 == *MEMORY[0x277CBF348] && v14 == *(MEMORY[0x277CBF348] + 8))
  {
    objc_msgSend_size(v9, v12, v13);
    v19 = v18;
    v21 = v20;
    v24 = objc_msgSend_geometry(self, v22, v23);
    objc_msgSend_size(v24, v25, v26);
    v17 = 1;
    if (v19 == v30 && v21 == v29)
    {
      objc_msgSend_angle(v9, v27, v28);
      v17 = v31 != 0.0;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (id)defaultMaskInfoWithContext:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_instantAlphaPath(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_instantAlphaPath(self, v8, v9);
    v13 = objc_msgSend_copy(v10, v11, v12);

    v16 = objc_msgSend_geometry(self, v14, v15);
    objc_msgSend_size(v16, v17, v18);
    v20 = v19;
    v22 = v21;

    objc_msgSend_naturalSize(self, v23, v24);
    memset(&v66, 0, sizeof(v66));
    CGAffineTransformMakeScale(&v66, v20 / v25, v22 / v26);
    v65 = v66;
    objc_msgSend_transformUsingAffineTransform_(v13, v27, &v65);
    objc_msgSend_bounds(v13, v28, v29);
    v30 = [TSDInfoGeometry alloc];
    TSUCenterOfRect();
    v33 = objc_msgSend_initWithCenter_size_(v30, v31, v32);
    v34 = objc_alloc_init(MEMORY[0x277D81160]);
    TSURectWithSize();
    objc_msgSend_appendBezierPathWithRect_(v34, v35, v36);
    v37 = [TSDBezierPathSource alloc];
    v39 = objc_msgSend_initWithBezierPath_(v37, v38, v34);
  }

  else
  {
    v13 = objc_msgSend_geometry(self, v8, v9);
    objc_msgSend_center(v13, v40, v41);
    objc_msgSend_position(v13, v42, v43);
    TSUSubtractPoints();
    v45 = v44;
    v47 = v46;
    objc_msgSend_size(v13, v48, v49);
    v51 = v50;
    v53 = v52;
    v34 = objc_alloc_init(MEMORY[0x277D81160]);
    TSURectWithSize();
    objc_msgSend_appendBezierPathWithRect_(v34, v54, v55);
    v56 = [TSDBezierPathSource alloc];
    v39 = objc_msgSend_initWithBezierPath_(v56, v57, v34);
    v58 = [TSDInfoGeometry alloc];
    v33 = objc_msgSend_initWithCenter_size_(v58, v59, v60, v45, v47, v51, v53);
  }

  v61 = [TSDMaskInfo alloc];
  v63 = objc_msgSend_initWithContext_geometry_pathSource_(v61, v62, v4, v33, v39);

  return v63;
}

- (id)defaultMaskInfo
{
  v4 = objc_msgSend_context(self, a2, v2);
  v6 = objc_msgSend_defaultMaskInfoWithContext_(self, v5, v4);

  return v6;
}

- (id)typesToPromiseWhenCopyingSingleDrawable
{
  v23[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = TSDImageInfo;
  v3 = [(TSDDrawableInfo *)&v21 typesToPromiseWhenCopyingSingleDrawable];
  if (objc_msgSend_hasPDFDataForCopy(self, v4, v5))
  {
    v8 = objc_msgSend_identifier(*MEMORY[0x277CE1E08], v6, v7);
    v10 = v8;
    if (v3)
    {
      v11 = objc_msgSend_arrayByAddingObject_(v3, v9, v8);

      v3 = v11;
    }

    else
    {
      v23[0] = v8;
      v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v23, 1);
    }
  }

  v12 = objc_msgSend_SVGData(self, v6, v7);

  if (v12)
  {
    v15 = objc_msgSend_identifier(*MEMORY[0x277CE1E68], v13, v14);
    v22 = v15;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, &v22, 1);

    if (v3)
    {
      v19 = objc_msgSend_arrayByAddingObjectsFromArray_(v17, v18, v3);

      v3 = v19;
    }

    else
    {
      v3 = v17;
    }
  }

  return v3;
}

- (id)promisedDataForType:(id)a3
{
  v4 = a3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_27667EF98;
  v51 = sub_27667EFA8;
  v52 = 0;
  v7 = objc_msgSend_identifier(*MEMORY[0x277CE1E08], v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v8, v7);

  if (isEqualToString)
  {
    objc_opt_class();
    v14 = objc_msgSend_context(self, v12, v13);
    v17 = objc_msgSend_documentObject(v14, v15, v16);
    v18 = TSUDynamicCast();

    v21 = objc_msgSend_accessController(v18, v19, v20);

    if (!v21)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSDImageInfo promisedDataForType:]");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 1093, 0, "invalid nil value for '%{public}s'", "docRoot.accessController");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    }

    v31 = objc_msgSend_accessController(v18, v22, v23);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_27667EFB0;
    v46[3] = &unk_27A6CC8A8;
    v46[4] = v18;
    v46[5] = self;
    v46[6] = &v47;
    objc_msgSend_performRead_(v31, v32, v46);
  }

  else
  {
    v33 = objc_msgSend_identifier(*MEMORY[0x277CE1E68], v10, v11);
    v35 = objc_msgSend_isEqualToString_(v4, v34, v33);

    if (v35)
    {
      v18 = objc_msgSend_SVGData(self, v36, v37);
      v40 = objc_msgSend_NSData(v18, v38, v39);
      v41 = v48[5];
      v48[5] = v40;
    }

    else
    {
      v45.receiver = self;
      v45.super_class = TSDImageInfo;
      v42 = [(TSDDrawableInfo *)&v45 promisedDataForType:v4];
      v18 = v48[5];
      v48[5] = v42;
    }
  }

  v43 = v48[5];
  _Block_object_dispose(&v47, 8);

  return v43;
}

- (CGPoint)centerForReplacingWithNewMedia
{
  v3 = objc_msgSend_geometryWithMask(self, a2, v2);
  objc_msgSend_center(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)scaleDownSizeToFitWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7 = objc_msgSend_maskInfo(self, a2, v3);

  if (v7)
  {
    v10 = objc_msgSend_maskInfo(self, v8, v9);
    v13 = objc_msgSend_geometry(v10, v11, v12);

    objc_msgSend_size(v13, v14, v15);
    v17 = v16;
    v19 = v18;
    TSUShrinkSizeToFitInSize();
    if (v22 < v17 || v23 < v19)
    {
      v25 = v22 / v17;
      v26 = v23 / v19;
      v27 = objc_msgSend_maskInfo(self, v20, v21);
      v30 = objc_msgSend_geometry(v27, v28, v29);
      CGAffineTransformMakeScale(&v44, v25, v26);
      v32 = objc_msgSend_geometryByAppendingTransform_(v30, v31, &v44);

      v35 = objc_msgSend_maskInfo(self, v33, v34);
      objc_msgSend_setGeometry_(v35, v36, v32);

      v39 = objc_msgSend_geometry(self, v37, v38);
      CGAffineTransformMakeScale(&v44, v25, v26);
      v41 = objc_msgSend_geometryByAppendingTransform_(v39, v40, &v44);

      objc_msgSend_setGeometry_(self, v42, v41);
    }
  }

  else
  {
    v43.receiver = self;
    v43.super_class = TSDImageInfo;
    [(TSDMediaInfo *)&v43 scaleDownSizeToFitWithinSize:width, height];
  }
}

- (void)updateGeometryToReplaceMediaInfo:(id)a3
{
  v74 = a3;
  v6 = objc_msgSend_geometry(v74, v4, v5);
  v9 = objc_msgSend_copy(v6, v7, v8);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_maskInfo(v74, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v15 = objc_msgSend_maskInfo(v74, v13, v14);
    v18 = objc_msgSend_pathSource(v15, v16, v17);
    v21 = objc_msgSend_copy(v18, v19, v20);

    v26 = objc_msgSend_geometry(v15, v22, v23);
    if (!v26)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSDImageInfo updateGeometryToReplaceMediaInfo:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 1143, 0, "invalid nil value for '%{public}s'", "oldMaskGeometry");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    }

    v34 = objc_msgSend_copy(v26, v24, v25);
  }

  else
  {
    v37 = [TSDInfoGeometry alloc];
    objc_msgSend_size(v9, v38, v39);
    TSURectWithSize();
    TSUCenterOfRect();
    v41 = v40;
    v43 = v42;
    objc_msgSend_originalSize(v74, v44, v45);
    v34 = objc_msgSend_initWithCenter_size_(v37, v46, v47, v41, v43, v48, v49);
    v21 = 0;
  }

  v50 = objc_msgSend_mutableCopy(v9, v35, v36);
  v53 = objc_msgSend_mutableCopy(v34, v51, v52);
  v56 = objc_msgSend_imageData(self, v54, v55);
  v59 = objc_msgSend_instantAlphaPath(self, v57, v58);
  objc_msgSend_naturalSize(self, v60, v61);
  objc_msgSend_adjustIncomingImageGeometry_maskGeometry_forImageData_maskedWithInstantAlphaPath_withNaturalSize_forTargetImageGeometry_withTargetMaskGeometry_(TSDImageInfo, v62, v50, v53, v56, v59, v9, v34);

  objc_msgSend_setGeometry_(self, v63, v50);
  if (v21)
  {
    v66 = [TSDMaskInfo alloc];
    v69 = objc_msgSend_context(self, v67, v68);
    v71 = objc_msgSend_initWithContext_geometry_pathSource_(v66, v70, v69, v34, v21);
  }

  else
  {
    v71 = objc_msgSend_defaultMaskInfo(self, v64, v65);
  }

  objc_msgSend_setGeometry_(v71, v72, v53);
  objc_msgSend_setMaskInfo_(self, v73, v71);
}

+ (void)adjustIncomingImageGeometry:(id)a3 maskGeometry:(id)a4 forImageData:(id)a5 maskedWithInstantAlphaPath:(id)a6 withNaturalSize:(CGSize)a7 forTargetImageGeometry:(id)a8 withTargetMaskGeometry:(id)a9
{
  height = a7.height;
  width = a7.width;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v21 = a9;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]");
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v68, v65, v67, 1187, 0, "invalid nil value for '%{public}s'", "newImageGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70);
    if (v15)
    {
LABEL_3:
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  v71 = MEMORY[0x277D81150];
  v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]");
  v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v75, v72, v74, 1188, 0, "invalid nil value for '%{public}s'", "newMaskGeometry");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77);
  if (v16)
  {
LABEL_4:
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_28:
    v85 = MEMORY[0x277D81150];
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]");
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v89, v86, v88, 1191, 0, "invalid nil value for '%{public}s'", "targetImageGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91);
    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_27:
  v78 = MEMORY[0x277D81150];
  v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]");
  v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v82, v79, v81, 1189, 0, "invalid nil value for '%{public}s'", "newImageData");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84);
  if (!v18)
  {
    goto LABEL_28;
  }

LABEL_5:
  if (v21)
  {
LABEL_6:
    objc_msgSend_transformedBounds(v21, v19, v20);
    goto LABEL_7;
  }

LABEL_29:
  v92 = [TSDInfoGeometry alloc];
  objc_msgSend_size(v18, v93, v94);
  v21 = objc_msgSend_initWithPosition_size_(v92, v95, v96, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v97, v98);
  objc_msgSend_transformedBounds(v21, v99, v100);
LABEL_7:
  v26 = v24;
  v27 = v25;
  v28 = objc_msgSend_sharedPool(TSDImageProviderPool, v22, v23);
  v30 = objc_msgSend_providerForData_shouldValidate_(v28, v29, v16, 1);

  v164 = v30;
  objc_msgSend_naturalSize(v30, v31, v32);
  v37 = v36;
  v38 = v35;
  v40 = *MEMORY[0x277CBF3A8];
  v39 = *(MEMORY[0x277CBF3A8] + 8);
  if (v36 == *MEMORY[0x277CBF3A8] && v35 == v39)
  {
    objc_opt_class();
    v44 = objc_msgSend_attributes(v16, v42, v43);
    v45 = TSUDynamicCast();

    if (objc_msgSend_hasPixelSize(v45, v46, v47))
    {
      objc_msgSend_pixelSize(v45, v48, v49);
      v37 = v50;
      v38 = v51;
    }
  }

  v52 = v38 == v39 && v37 == v40;
  v53 = v27;
  v54 = v26;
  if (!v52)
  {
    TSUFitOrFillSizeInSize();
    v54 = v55;
    v53 = v56;
  }

  v165 = v17;
  if (!v17)
  {
    goto LABEL_32;
  }

  if (width == v40 && height == v39)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]", height);
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v61, v58, v60, 1223, 0, "instant alpha paths require non-zero natural sizes");

    v17 = v165;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
    if (!v52)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v52)
  {
LABEL_31:
    v101 = MEMORY[0x277D81150];
    v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]");
    v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v105, v102, v104, 1224, 0, "we have an IA path but an error provider for the image. we can't calculate its size, and so we're going to do The Wrong Thing.");

    v17 = v165;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v106, v107);
LABEL_32:
    v108 = v54;
    v109 = v53;
    objc_msgSend_setSize_(v14, v33, v34, fmaxf(v108, 1.0), fmaxf(v109, 1.0));
    objc_msgSend_center(v21, v110, v111);
    if (v18)
    {
      v161 = v115;
      v163 = v114;
      objc_msgSend_transform(v18, v112, v113);
      v115 = v161;
      v114 = v163;
      v117 = *&v166.a;
      v116 = *&v166.c;
      v118 = *&v166.tx;
    }

    else
    {
      v118 = 0uLL;
      v117 = 0uLL;
      v116 = 0uLL;
    }

    v119 = 0x277D81000uLL;
    objc_msgSend_setCenter_(v14, v112, v113, vaddq_f64(v118, vmlaq_n_f64(vmulq_n_f64(v116, v115), v117, v114)));
    objc_msgSend_size(v14, v120, v121);
    TSURectWithSize();
    TSUCenterOfRect();
    goto LABEL_36;
  }

  CGAffineTransformMakeScale(&v166, v37 / width, v38 / height);
  objc_msgSend_transformUsingAffineTransform_(v17, v135, &v166);
  objc_msgSend_bounds(v17, v136, v137);
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v145 = v144;
  TSUFitOrFillSizeInSize();
  *&v146 = v146;
  *&v147 = v147;
  v148 = fmaxf(*&v146, 1.0) / v143;
  v149 = fmaxf(*&v147, 1.0) / v145;
  objc_msgSend_setSize_(v14, v150, v151, v37 * v148, v38 * v149);
  CGAffineTransformMakeScale(&v166, v148, v149);
  v167.origin.x = v139;
  v167.origin.y = v141;
  v167.size.width = v143;
  v167.size.height = v145;
  CGRectApplyAffineTransform(v167, &v166);
  TSURectWithSize();
  TSUCenterOfRect();
  TSUCenterOfRect();
  TSUSubtractPoints();
  objc_msgSend_center(v21, v152, v153);
  if (v18)
  {
    objc_msgSend_transform(v18, v154, v155);
  }

  v119 = 0x277D81000;
  TSUAddPoints();
  objc_msgSend_setCenter_(v14, v156, v157);
  objc_msgSend_size(v14, v158, v159);
  TSURectWithSize();
  TSUCenterOfRect();
  TSUSubtractPoints();
LABEL_36:
  objc_msgSend_setCenter_(v15, v122, v123);
  if (!objc_msgSend_heightValid(v14, v124, v125) || (objc_msgSend_widthValid(v14, v126, v127) & 1) == 0)
  {
    v128 = *(v119 + 336);
    v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]");
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v132, v129, v131, 1289, 0, "returning an image geometry with invalid height/width.");

    v17 = v165;
    objc_msgSend_logBacktraceThrottled(*(v119 + 336), v133, v134);
  }
}

- (TSUBezierPath)tracedPath
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = v2->mTracedPath;
  if (v5)
  {
    goto LABEL_24;
  }

  v6 = objc_msgSend_sharedPool(TSDImageProviderPool, v3, v4);
  v9 = objc_msgSend_imageData(v2, v7, v8);
  v11 = objc_msgSend_providerForData_shouldValidate_(v6, v10, v9, 1);

  objc_opt_class();
  v12 = TSUDynamicCast();
  shouldTracePDFData = objc_msgSend_shouldTracePDFData(v2, v13, v14);
  if (v12)
  {
    v18 = 0;
  }

  else
  {
    v18 = shouldTracePDFData;
  }

  if (v18 == 1)
  {
    if (objc_msgSend_isError(v11, v16, v17))
    {
LABEL_20:

      goto LABEL_23;
    }

    objc_msgSend_naturalSize(v11, v19, v20);
    v24 = sub_276646084(v11, @"temp", 0, 2, v21, v22);
    if (!v24)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSDImageInfo tracedPath]");
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 1305, 0, "invalid nil value for '%{public}s'", "rasterizedData");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
    }

    objc_opt_class();
    v34 = objc_msgSend_sharedPool(TSDImageProviderPool, v32, v33);
    v36 = objc_msgSend_temporaryProviderForData_shouldValidate_(v34, v35, v24, 1);
    v12 = TSUDynamicCast();
  }

  if (!v12)
  {
    goto LABEL_20;
  }

  v37 = [TSDImageRenderingConfiguration alloc];
  inited = objc_msgSend_initWantsHDR_(v37, v38, 0);
  v43 = objc_msgSend_CGImageOfLargestSafeSizeWithRenderingConfiguration_(v12, v40, inited);
  if (v43)
  {
    v44 = objc_msgSend_exteriorTextWrap(v2, v41, v42);
    objc_msgSend_alphaThreshold(v44, v45, v46);
    v48 = v47;

    v5 = objc_msgSend_tracedPathForImage_alphaThreshold_pointSpacing_(MEMORY[0x277D81160], v49, v43, v48, 2.0);
    if (v5)
    {
      Width = CGImageGetWidth(v43);
      Height = CGImageGetHeight(v43);
      objc_msgSend_naturalSize(v2, v52, v53);
      v58 = Width;
      v59 = Height;
      if (v56 != Width || v57 != v59)
      {
        CGAffineTransformMakeScale(&v80, v56 / v58, v57 / v59);
        objc_msgSend_transformUsingAffineTransform_(v5, v60, &v80);
      }

      objc_msgSend_naturalSize(v12, v54, v55);
      if (v64 == v58 && v63 == v59)
      {
        memset(&v80, 0, sizeof(v80));
        objc_msgSend_orientation(v12, v61, v62);
        TSUImageOrientationTransform();
        v79 = v80;
        if (!CGAffineTransformIsIdentity(&v79))
        {
          TSURectWithSize();
          v79 = v80;
          v83 = CGRectApplyAffineTransform(v82, &v79);
          x = v83.origin.x;
          y = v83.origin.y;
          v67 = v83.size.width;
          v68 = v83.size.height;
          v79 = v80;
          objc_msgSend_transformUsingAffineTransform_(v5, v69, &v79);
          v84.origin.x = x;
          v84.origin.y = y;
          v84.size.width = v67;
          v84.size.height = v68;
          MinX = CGRectGetMinX(v84);
          v85.origin.x = x;
          v85.origin.y = y;
          v85.size.width = v67;
          v85.size.height = v68;
          MinY = CGRectGetMinY(v85);
          CGAffineTransformMakeTranslation(&v79, -MinX, -MinY);
          objc_msgSend_transformUsingAffineTransform_(v5, v72, &v79);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_23:
    v73 = MEMORY[0x277D81160];
    objc_msgSend_naturalSize(v2, v3, v4);
    TSURectWithSize();
    v5 = objc_msgSend_bezierPathWithRect_(v73, v74, v75);
    if (!v5)
    {
      goto LABEL_26;
    }
  }

LABEL_24:
  if (objc_msgSend_canModify(v2, v3, v4))
  {
    objc_msgSend_willModify(v2, v76, v77);
    objc_storeStrong(&v2->mTracedPath, v5);
  }

LABEL_26:
  objc_sync_exit(v2);

  return v5;
}

- (CGSize)naturalSize
{
  v2 = self;
  objc_sync_enter(v2);
  p_width = &v2->mNaturalSize.width;
  if (v2->mNaturalSize.width == *MEMORY[0x277CBF3A8] && v2->mNaturalSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    if (!v2->mImageDataHelper)
    {
      v7 = objc_msgSend_imageData(v2, v3, v4);

      if (v7)
      {
        v8 = MEMORY[0x277D81150];
        v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSDImageInfo naturalSize]");
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1359, 0, "no data helper for our data!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
      }
    }

    if (objc_msgSend_canModify(v2, v3, v4) && v2->mImageDataHelper)
    {
      objc_msgSend_willModify(v2, v15, v16);
      objc_msgSend_naturalSize(v2->mImageDataHelper, v17, v18);
      *p_width = v19;
      v2->mNaturalSize.height = v20;
    }
  }

  objc_sync_exit(v2);

  v21 = *p_width;
  height = v2->mNaturalSize.height;
  result.height = height;
  result.width = v21;
  return result;
}

- (void)setNaturalSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  p_mNaturalSize = &self->mNaturalSize;
  if (a3.width != self->mNaturalSize.width || a3.height != self->mNaturalSize.height)
  {
    obj = self;
    objc_sync_enter(obj);
    objc_msgSend_willModify(obj, v7, v8);
    p_mNaturalSize->width = width;
    p_mNaturalSize->height = height;
    objc_sync_exit(obj);
  }
}

- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (!v8)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSDImageInfo mixingTypeWithObject:context:]");
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v15, v12, v14, 1400, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17);
  }

  v18 = objc_msgSend_imageData(self, v9, v10);
  v21 = objc_msgSend_imageData(v8, v19, v20);
  isEqual = objc_msgSend_isEqual_(v18, v22, v21);

  if (!isEqual)
  {
    v78 = 1;
    goto LABEL_40;
  }

  v26 = objc_msgSend_imageStyle(self, v24, v25);
  v29 = objc_msgSend_imageStyle(v8, v27, v28);
  v30 = TSDMixingTypeWithObjects(v26, v29, v6);
  v31 = TSDMixingTypeBestFromMixingTypes(5, v30);

  v34 = objc_msgSend_imageAdjustments(self, v32, v33);
  v37 = objc_msgSend_imageAdjustments(v8, v35, v36);
  v38 = TSDMixingTypeWithObjects(v34, v37, v6);
  v39 = TSDMixingTypeBestFromMixingTypes(v31, v38);

  if ((objc_msgSend_maskCanBeReset(self, v40, v41) & 1) != 0 || objc_msgSend_maskCanBeReset(v8, v42, v43))
  {
    v44 = objc_msgSend_maskInfo(self, v42, v43);
    v47 = objc_msgSend_maskInfo(v8, v45, v46);
    v48 = TSDMixingTypeWithObjects(v44, v47, v6);
    v39 = TSDMixingTypeBestFromMixingTypes(v39, v48);
  }

  v49 = objc_msgSend_geometry(self, v42, v43);
  objc_opt_class();
  v52 = objc_msgSend_geometry(v8, v50, v51);
  v53 = TSUDynamicCast();

  if (!v53)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSDImageInfo mixingTypeWithObject:context:]");
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v60, v57, v59, 1423, 0, "geometry is nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62);
  }

  if (v39 >= 4)
  {
    if (objc_msgSend_isEqual_(v49, v54, v53))
    {
      v65 = v39;
    }

    else
    {
      v65 = 4;
    }

    v66 = objc_msgSend_horizontalFlip(v49, v63, v64);
    if (v66 == objc_msgSend_horizontalFlip(v53, v67, v68))
    {
      goto LABEL_36;
    }

    v73 = objc_msgSend_reflection(self, v69, v70);
    if (v73 || (objc_msgSend_reflection(v8, v71, v72), (v82 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v65 = objc_msgSend_reflection(self, v71, v72);
      if (v65)
      {
        v76 = objc_msgSend_reflection(v8, v74, v75);
        v77 = v76 == 0;
      }

      else
      {
        v77 = 0;
      }

      if (v73)
      {
LABEL_27:

        v87 = objc_msgSend_instantAlphaPath(self, v83, v84);
        if (v87 || (objc_msgSend_instantAlphaPath(v8, v85, v86), (v65 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v88 = objc_msgSend_instantAlphaPath(self, v85, v86);
          v91 = objc_msgSend_instantAlphaPath(v8, v89, v90);
          v93 = objc_msgSend_isEqual_(v88, v92, v91) ^ 1;

          if (v87)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v93 = 0;
        }

LABEL_33:
        if ((v93 | v77))
        {
          v65 = 1;
        }

        else
        {
          v65 = 2;
        }

        goto LABEL_36;
      }

      v82 = 0;
    }

    else
    {
      v77 = 1;
    }

    goto LABEL_27;
  }

  v79 = objc_msgSend_horizontalFlip(v49, v54, v55);
  if (v79 != objc_msgSend_horizontalFlip(v53, v80, v81))
  {
    v65 = 1;
  }

  else
  {
    v65 = v39;
  }

LABEL_36:
  if (v65 == 3)
  {
    v78 = 2;
  }

  else
  {
    v78 = v65;
  }

LABEL_40:
  return v78;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v6 = a4;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v10 = objc_msgSend_geometry(self, v8, v9);
  v13 = objc_msgSend_geometry(v7, v11, v12);
  v14 = TSDMixingMixedObjectWithFraction(v10, v13, a3);

  v17 = objc_msgSend_imageStyle(self, v15, v16);
  v20 = objc_msgSend_imageStyle(v7, v18, v19);
  v21 = TSDMixingMixedObjectWithFraction(v17, v20, a3);

  v24 = objc_msgSend_maskInfo(self, v22, v23);
  v27 = objc_msgSend_maskInfo(v7, v25, v26);
  v28 = TSDMixingMixedObjectWithFraction(v24, v27, a3);

  v29 = [TSDImageInfo alloc];
  v32 = objc_msgSend_context(self, v30, v31);
  v35 = objc_msgSend_imageData(self, v33, v34);
  v37 = objc_msgSend_initWithContext_geometry_style_imageData_originalImageData_(v29, v36, v32, v14, v21, v35, 0);

  objc_msgSend_setMaskInfo_(v37, v38, v28);

  return v37;
}

+ (id)bootstrapPropertyMapForPresetIndex:(unint64_t)a3 inTheme:(id)a4 alternate:(unint64_t)a5
{
  v8 = objc_msgSend_colors(a4, a2, a3);
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSDImageInfo bootstrapPropertyMapForPresetIndex:inTheme:alternate:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1484, 0, "invalid nil value for '%{public}s'", "colors");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v17 = objc_alloc_init(MEMORY[0x277D80AB8]);
  if (a5 <= 5 && ((1 << a5) & 0x2B) != 0)
  {
    if (a3 > 2)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          if (a3 != 5)
          {
            goto LABEL_29;
          }

          v18 = [TSDFrame alloc];
          v21 = objc_msgSend_initWithFrameName_(v18, v19, @"Modern");
          if (v21)
          {
            goto LABEL_21;
          }

          v22 = MEMORY[0x277D81150];
          v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[TSDImageInfo bootstrapPropertyMapForPresetIndex:inTheme:alternate:]");
          v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 1517, 0, "Modern frame in frames bundle is NULL!");
LABEL_11:

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
LABEL_21:
          objc_msgSend_setObject_forProperty_(v17, v20, v21, 517);
          goto LABEL_28;
        }

LABEL_22:
        v21 = objc_msgSend_objectAtIndex_(v8, v16, 5);
        objc_msgSend_strokeWithColor_width_(TSDStroke, v37, v21, 2.0);
        v39 = LABEL_25:;
        objc_msgSend_setObject_forProperty_(v17, v40, v39, 517);

        goto LABEL_28;
      }

      objc_msgSend_objectAtIndex_(v8, v16, 5);
      goto LABEL_24;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_29;
      }

      v29 = [TSDDropShadow alloc];
      v31 = objc_msgSend_objectAtIndex_(v8, v30, 2);
      v33 = objc_msgSend_initWithAngle_offset_radius_opacity_color_enabled_(v29, v32, v31, 1, 270.0, 10.0, 20.0, 0.7);
      goto LABEL_15;
    }

    v41 = [TSDReflection alloc];
    v44 = objc_msgSend_initWithOpacity_(v41, v42, v43, 0.5);
LABEL_27:
    v21 = v44;
    objc_msgSend_setObject_forProperty_(v17, v45, v44, 519);
    goto LABEL_28;
  }

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        if (a3 != 5)
        {
          goto LABEL_29;
        }

        v35 = [TSDFrame alloc];
        v21 = objc_msgSend_initWithFrameName_(v35, v36, @"Modern");
        if (v21)
        {
          goto LABEL_21;
        }

        v53 = MEMORY[0x277D81150];
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[TSDImageInfo bootstrapPropertyMapForPresetIndex:inTheme:alternate:]");
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v55, v23, v25, 1556, 0, "Modern frame in frames bundle is NULL!");
        goto LABEL_11;
      }

      goto LABEL_22;
    }

    objc_msgSend_objectAtIndex_(v8, v16, 3);
    v21 = LABEL_24:;
    objc_msgSend_strokeWithColor_width_(TSDStroke, v38, v21, 1.0);
    goto LABEL_25;
  }

  if (a3 == 1)
  {
    v50 = [TSDReflection alloc];
    v44 = objc_msgSend_initWithOpacity_(v50, v51, v52, 0.27);
    goto LABEL_27;
  }

  if (a3 == 2)
  {
    v47 = [TSDDropShadow alloc];
    v31 = objc_msgSend_objectAtIndex_(v8, v48, 2);
    v33 = objc_msgSend_initWithAngle_offset_radius_opacity_color_enabled_(v47, v49, v31, 1, 320.0, 6.0, 7.0, 0.59);
LABEL_15:
    v21 = v33;

    objc_msgSend_setObject_forProperty_(v17, v34, v21, 520);
LABEL_28:
  }

LABEL_29:

  return v17;
}

+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(unint64_t)a5 reservedCount:(unint64_t)a6
{
  v33 = a4;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = 6 - a6;
  v12 = objc_msgSend_initWithCapacity_(v9, v11, 6 - a6);
  if (a6 != 6)
  {
    v13 = 0;
    do
    {
      v14 = sub_27669981C(v13);
      v15 = [TSDMediaStyle alloc];
      v18 = objc_msgSend_context(v33, v16, v17);
      v20 = objc_msgSend_initWithContext_(v15, v19, v18);

      v22 = objc_msgSend_bootstrapPropertyMapForPresetIndex_inTheme_alternate_(a1, v21, v13, v33, a5);
      objc_msgSend_setValuesForProperties_(v20, v23, v22);
      v26 = objc_msgSend_documentStylesheet(v33, v24, v25);
      objc_msgSend_addStyle_withIdentifier_(v26, v27, v20, v14);

      objc_msgSend_addObject_(v12, v28, v20);
      ++v13;
    }

    while (v10 != v13);
  }

  v29 = objc_alloc(MEMORY[0x277CBEA60]);
  v31 = objc_msgSend_initWithArray_(v29, v30, v12);
  objc_msgSend_setPresets_ofKind_(v33, v32, v31, *MEMORY[0x277D80B38]);
}

- (void)i_regenerateThumbnailDataIfMissingButExpected
{
  v4 = objc_msgSend_thumbnailImageData(self, a2, v2);
  if (!v4)
  {
    Thumbnails = objc_msgSend_shouldGenerateThumbnails(self, 0, v5);
    v4 = 0;
    if (Thumbnails)
    {
      v8 = objc_msgSend_imageData(self, 0, v7);
      isReadable = objc_msgSend_isReadable(v8, v9, v10);

      if (!isReadable)
      {
        return;
      }

      v14 = objc_msgSend_imageData(self, v12, v13);
      obj = objc_msgSend_thumbnailImageDataForImageData_(TSDImageDataHelper, v15, v14);

      v4 = obj;
      if (obj)
      {
        objc_msgSend_willModifyForUpgradeWithOptions_(self, obj, 2);
        objc_storeStrong(&self->mThumbnailImageData, obj);
        v4 = obj;
      }
    }
  }
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 6))
  {
    v7 = *(a3 + 6);
  }

  else
  {
    v7 = &TSD::_DrawableArchive_default_instance_;
  }

  v164.receiver = self;
  v164.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v164 loadFromArchive:v7 unarchiver:v6];
  v9 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  v11 = *(a3 + 10);
  if ((v11 & 2) != 0)
  {
    v23 = *(a3 + 7);
    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 3221225472;
    v163[2] = sub_276681E3C;
    v163[3] = &unk_27A6CC8D0;
    v163[4] = self;
    v24 = v6;
    v25 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v24, v26, v23, v25, 0, v163);
  }

  else if ((v11 & 0x200) != 0)
  {
    v12 = objc_msgSend_readDataReferenceMessage_(v6, v8, *(a3 + 15));
    if (objc_msgSend_isApplicationData(v12, v13, v14) && (objc_msgSend_isReadable(v12, v15, v16) & 1) == 0)
    {
      if ((*(a3 + 41) & 4) != 0)
      {
        v107 = objc_msgSend_readDataReferenceMessage_(v6, v17, *(a3 + 16));
        mImageData = self->mImageData;
        self->mImageData = v107;

        if (v107)
        {
          v20 = self->mImageData;
          v162.receiver = self;
          v162.super_class = TSDImageInfo;
          [(TSDMediaInfo *)&v162 defaultOriginalSize];
          v9 = v109;
          v10 = v110;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      if (self->mImageData)
      {
        v21 = 1;
        goto LABEL_10;
      }

      obja = v20;
      v22 = objc_msgSend_fallbackColor(v12, v17, v18);
      if (!v22)
      {
        v149 = objc_msgSend_quicklookAssetMap(MEMORY[0x277D812E8], v111, v112);
        v115 = objc_msgSend_assetMap(v149, v113, v114);
        v118 = objc_msgSend_documentResourceLocator(v12, v116, v117);
        v121 = objc_msgSend_uppercaseString(v118, v119, v120);
        v22 = objc_msgSend_objectForKey_(v115, v122, v121);

        if (!v22)
        {
          v123 = MEMORY[0x277D81150];
          v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "[TSDImageInfo(PersistenceAdditions) loadFromArchive:unarchiver:]");
          v126 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v125, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfoPersistenceAdditions.mm");
          v129 = objc_msgSend_filename(v12, v127, v128);
          v132 = objc_msgSend_digestString(v12, v130, v131);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v123, v133, v124, v126, 99, 0, "TSDImageInfo(PersistenceAdditions): failed to locate color entry for application asset name: %@ hash:%@", v129, v132);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v134, v135);
          v22 = objc_msgSend_clearColor(MEMORY[0x277D81180], v136, v137);
          if (!v22)
          {
            v21 = 1;
            v20 = obja;
            goto LABEL_10;
          }
        }
      }

      v138 = objc_msgSend_CGColor(v22, v111, v112);
      v141 = objc_msgSend_context(self, v139, v140);
      v143 = objc_msgSend_imageDataFromCGColor_objContext_(TSDQuicklookPersistenceAdditions, v142, v138, v141);
      v144 = self->mImageData;
      self->mImageData = v143;

      objc_msgSend_imageColorSize(TSDQuicklookPersistenceAdditions, v145, v146);
      v9 = v147;
      v10 = v148;
      v21 = 1;
      v20 = obja;
    }

    else
    {
      v19 = v12;
      v20 = 0;
      v21 = 0;
      v22 = self->mImageData;
      self->mImageData = v19;
    }

LABEL_10:
    goto LABEL_13;
  }

  v20 = 0;
  v21 = 0;
LABEL_13:
  v27 = *(a3 + 8);
  v161[0] = MEMORY[0x277D85DD0];
  v161[1] = 3221225472;
  v161[2] = sub_276681EB8;
  v161[3] = &unk_27A6CC8F8;
  v161[4] = self;
  v28 = v6;
  v30 = objc_opt_class();
  v31 = MEMORY[0x277D80A18];
  if (v27)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v28, v29, v27, v30, 0, v161);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v28, v29, MEMORY[0x277D80A18], v30, 0, v161);
  }

  obj = v20;
  if ((*(a3 + 40) & 8) != 0)
  {
    v34 = v9;
    v35 = v10;
    if ((v21 & 1) == 0)
    {
      TSPCGSizeCreateFromMessage(*(a3 + 9));
    }
  }

  else
  {
    objc_msgSend_defaultOriginalSize(self, v32, v33);
  }

  self->super._originalSize.width = v34;
  self->super._originalSize.height = v35;
  v36 = *(a3 + 10);
  if ((v36 & 0x10) != 0)
  {
    v37 = objc_msgSend_sourceType(v28, v32, v33);
    v38 = *(a3 + 10);
    v159[0] = MEMORY[0x277D85DD0];
    v159[1] = 3221225472;
    v159[2] = sub_276681ED0;
    v159[3] = &unk_27A6CC920;
    v159[4] = self;
    v160 = v37 == 1;
    v39 = v28;
    v41 = objc_opt_class();
    if (v38)
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v39, v40, v38, v41, 0, v159);
    }

    else
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v39, v40, v31, v41, 0, v159);
    }

    v36 = *(a3 + 10);
  }

  if ((v36 & 0x100) != 0)
  {
    v42 = TSPCGPathCreateFromMessage(*(a3 + 14));
    v44 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v43, v42);
    mInstantAlphaPath = self->mInstantAlphaPath;
    self->mInstantAlphaPath = v44;

    CGPathRelease(v42);
    v36 = *(a3 + 10);
  }

  if ((v36 & 0x10000) != 0)
  {
    v46 = TSPCGPathCreateFromMessage(*(a3 + 22));
    v48 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v47, v46);
    mTracedPath = self->mTracedPath;
    self->mTracedPath = v48;

    CGPathRelease(v46);
    v36 = *(a3 + 10);
  }

  if ((v36 & 0x20) != 0)
  {
    v50 = *(a3 + 11);
    v158[0] = MEMORY[0x277D85DD0];
    v158[1] = 3221225472;
    v158[2] = sub_276681F5C;
    v158[3] = &unk_27A6CC8D0;
    v158[4] = self;
    v51 = v28;
    v52 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v51, v53, v50, v52, 0, v158);
  }

  else if ((v36 & 0x400) != 0)
  {
    if (obj)
    {
      objc_storeStrong(&self->mThumbnailImageData, obj);
    }

    else
    {
      v105 = objc_msgSend_readDataReferenceMessage_(v28, 0, *(a3 + 16));
      mThumbnailImageData = self->mThumbnailImageData;
      self->mThumbnailImageData = v105;
    }
  }

  v54 = self->mThumbnailImageData;
  v55 = objc_msgSend_null(MEMORY[0x277D80828], v32, v33);

  if (v54 == v55)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v56, 2);
    v58 = self->mThumbnailImageData;
    self->mThumbnailImageData = 0;
  }

  mAdjustedImageData = self->mAdjustedImageData;
  v60 = objc_msgSend_null(MEMORY[0x277D80828], v56, v57);

  if (mAdjustedImageData == v60)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v61, 2);
    v63 = self->mAdjustedImageData;
    self->mAdjustedImageData = 0;
  }

  mThumbnailAdjustedImageData = self->mThumbnailAdjustedImageData;
  v65 = objc_msgSend_null(MEMORY[0x277D80828], v61, v62);

  if (mThumbnailAdjustedImageData == v65)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, v66, 2);
    v67 = self->mThumbnailAdjustedImageData;
    self->mThumbnailAdjustedImageData = 0;
  }

  v68 = *(a3 + 10);
  if ((v68 & 0x40) != 0)
  {
    v71 = *(a3 + 12);
    v157[0] = MEMORY[0x277D85DD0];
    v157[1] = 3221225472;
    v157[2] = sub_276681FD8;
    v157[3] = &unk_27A6CC8D0;
    v157[4] = self;
    v72 = v28;
    v73 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v72, v74, v71, v73, 0, v157);
  }

  else if ((v68 & 0x800) != 0)
  {
    v69 = objc_msgSend_readDataReferenceMessage_(v28, v66, *(a3 + 17));
    mOriginalImageData = self->mOriginalImageData;
    self->mOriginalImageData = v69;
  }

  if ((*(a3 + 42) & 4) != 0)
  {
    v75 = objc_msgSend_readDataReferenceMessage_(v28, v66, *(a3 + 24));
    v76 = self->mOriginalImageData;
    self->mOriginalImageData = v75;
  }

  v156[0] = MEMORY[0x277D85DD0];
  v156[1] = 3221225472;
  v156[2] = sub_276682054;
  v156[3] = &unk_27A6CC790;
  v156[4] = self;
  objc_msgSend_addFinalizeHandler_(v28, v66, v156);
  v78 = *(a3 + 10);
  if ((v78 & 0x80) == 0)
  {
LABEL_49:
    if ((v78 & 0x80000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (v21)
  {
    self->mNaturalSize.width = v9;
    self->mNaturalSize.height = v10;
    goto LABEL_49;
  }

  TSPCGSizeCreateFromMessage(*(a3 + 13));
  self->mNaturalSize.width = v79;
  self->mNaturalSize.height = v80;
  if ((*(a3 + 10) & 0x80000) != 0)
  {
LABEL_50:
    objc_msgSend_setFlags_(self, v77, *(a3 + 50));
  }

LABEL_52:
  v81 = *(a3 + 6);
  if (!v81)
  {
    v81 = &TSD::_DrawableArchive_default_instance_;
  }

  if ((v81[17] & 2) == 0)
  {
    self->super.super.super.mAspectRatioLocked = 1;
  }

  v82 = *(a3 + 10);
  if ((v82 & 0x1000) != 0)
  {
    v83 = [TSDImageAdjustments alloc];
    if (*(a3 + 18))
    {
      v85 = objc_msgSend_initWithArchive_unarchiver_(v83, v84, *(a3 + 18), v28);
    }

    else
    {
      v85 = objc_msgSend_initWithArchive_unarchiver_(v83, v84, &TSD::_ImageAdjustmentsArchive_default_instance_, v28);
    }

    mImageAdjustments = self->mImageAdjustments;
    self->mImageAdjustments = v85;

    v82 = *(a3 + 10);
  }

  if ((v82 & 0x2000) != 0)
  {
    v87 = objc_msgSend_readDataReferenceMessage_(v28, v77, *(a3 + 19));
    v88 = self->mAdjustedImageData;
    self->mAdjustedImageData = v87;

    v82 = *(a3 + 10);
  }

  if ((v82 & 0x4000) != 0)
  {
    v89 = objc_msgSend_readDataReferenceMessage_(v28, v77, *(a3 + 20));
    v90 = self->mThumbnailAdjustedImageData;
    self->mThumbnailAdjustedImageData = v89;

    v82 = *(a3 + 10);
  }

  if ((v82 & 0x8000) != 0)
  {
    v91 = objc_msgSend_readDataReferenceMessage_(v28, v77, *(a3 + 21));
    mEnhancedImageData = self->mEnhancedImageData;
    self->mEnhancedImageData = v91;

    v82 = *(a3 + 10);
  }

  if ((v82 & 0x20000) != 0)
  {
    v93 = [TSDAttribution alloc];
    if (*(a3 + 23))
    {
      v95 = objc_msgSend_initFromMessage_unarchiver_(v93, v94, *(a3 + 23), v28);
    }

    else
    {
      v95 = objc_msgSend_initFromMessage_unarchiver_(v93, v94, &TSD::_Attribution_default_instance_, v28);
    }

    attribution = self->super._attribution;
    self->super._attribution = v95;

    v82 = *(a3 + 10);
  }

  if ((v82 & 0x100000) != 0)
  {
    v97 = *(a3 + 204);
    v154[0] = MEMORY[0x277D85DD0];
    v154[1] = 3221225472;
    v154[2] = sub_27668234C;
    v154[3] = &unk_27A6CC948;
    v154[4] = self;
    v155 = v97;
    objc_msgSend_addFinalizeHandler_(v28, v77, v154);
  }

  objc_msgSend_setShouldTracePDFData_(self, v77, *(a3 + 205));
  objc_msgSend_setBackgroundRemoved_(self, v98, *(a3 + 206));
  if (objc_msgSend_hasPreUFFVersion(v28, v99, v100))
  {
    v103 = objc_msgSend_preUFFVersion(v28, v101, v102);
    v153[0] = MEMORY[0x277D85DD0];
    v153[1] = 3221225472;
    v153[2] = sub_2766823CC;
    v153[3] = &unk_27A6CC7E0;
    v153[4] = self;
    v153[5] = v103;
    objc_msgSend_addFinalizeHandler_(v28, v104, v153);
  }

  if (self->mThumbnailImageData && self->mAdjustedImageData && !self->mThumbnailAdjustedImageData)
  {
    v152[0] = MEMORY[0x277D85DD0];
    v152[1] = 3221225472;
    v152[2] = sub_276682480;
    v152[3] = &unk_27A6CC790;
    v152[4] = self;
    objc_msgSend_addFinalizeHandler_(v28, v101, v152);
  }

  self->mCurrentlyInDocument = objc_msgSend_tsp_isInDocument(self, v101, v102);
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812F5188[84]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, v7);
}

- (void)p_upgradeImageGeometry
{
  if (self->mMaskInfo)
  {
    v48 = objc_msgSend_geometry(self, a2, v2);
    if (objc_msgSend_horizontalFlip(v48, v4, v5))
    {
    }

    else
    {
      v9 = objc_msgSend_geometry(self, v6, v7);
      v12 = objc_msgSend_verticalFlip(v9, v10, v11);

      if (!v12)
      {
        return;
      }
    }

    objc_msgSend_willModifyForUpgradeWithOptions_(self, v8, 2);
    v15 = objc_msgSend_geometry(self->mMaskInfo, v13, v14);
    v18 = objc_msgSend_geometry(self, v16, v17);
    v49 = objc_msgSend_geometryWithParentGeometry_(v15, v19, v18);

    v22 = objc_msgSend_geometry(self, v20, v21);
    v25 = objc_msgSend_mutableCopy(v22, v23, v24);

    objc_msgSend_setHorizontalFlip_(v25, v26, 0);
    objc_msgSend_setVerticalFlip_(v25, v27, 0);
    v30 = objc_msgSend_geometry(self->mMaskInfo, v28, v29);
    v32 = objc_msgSend_geometryWithParentGeometry_(v30, v31, v25);

    v35 = objc_msgSend_geometry(self, v33, v34);
    v38 = objc_msgSend_mutableCopy(v35, v36, v37);

    objc_msgSend_position(v32, v39, v40);
    objc_msgSend_position(v49, v41, v42);
    objc_msgSend_position(v38, v43, v44);
    TSUSubtractPoints();
    TSUAddPoints();
    objc_msgSend_setPosition_(v38, v45, v46);
    objc_msgSend_setGeometry_(self, v47, v38);
  }
}

- (void)p_upgradeImageThumbnail
{
  if (!self->mThumbnailImageData)
  {
    objc_msgSend_willModifyForUpgradeWithOptions_(self, a2, 2);

    MEMORY[0x2821F9670](self, sel_i_forciblyRegenerateThumbnail, v4);
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_276682F6C;
  v78[3] = &unk_27A6CC520;
  v81 = a3;
  v7 = v6;
  v79 = v7;
  v80 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, v78);
  mImageData = self->mImageData;
  if (mImageData)
  {
    *(a3 + 10) |= 0x200u;
    v11 = *(a3 + 15);
    if (!v11)
    {
      v12 = *(a3 + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C9BA90](v12);
      *(a3 + 15) = v11;
    }

    objc_msgSend_setDataReference_message_(v7, v9, mImageData, v11);
  }

  mOriginalImageData = self->mOriginalImageData;
  if (mOriginalImageData)
  {
    *(a3 + 10) |= 0x800u;
    v14 = *(a3 + 17);
    if (!v14)
    {
      v15 = *(a3 + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C9BA90](v15);
      *(a3 + 17) = v14;
    }

    objc_msgSend_setDataReference_message_(v7, v9, mOriginalImageData, v14);
  }

  mStyle = self->mStyle;
  *(a3 + 10) |= 4u;
  v17 = *(a3 + 8);
  if (!v17)
  {
    v18 = *(a3 + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x277C9BB20](v18);
    *(a3 + 8) = v17;
  }

  objc_msgSend_setStrongReference_message_(v7, v9, mStyle, v17);
  width = self->super._originalSize.width;
  height = self->super._originalSize.height;
  *(a3 + 10) |= 8u;
  v21 = *(a3 + 9);
  if (!v21)
  {
    v22 = *(a3 + 1);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x277C9BAD0](v22);
    *(a3 + 9) = v21;
  }

  v82.width = width;
  v82.height = height;
  TSPCGSizeCopyToMessage(v82, v21);
  v23 = self->mNaturalSize.width;
  v24 = self->mNaturalSize.height;
  *(a3 + 10) |= 0x80u;
  v25 = *(a3 + 13);
  if (!v25)
  {
    v26 = *(a3 + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x277C9BAD0](v26);
    *(a3 + 13) = v25;
  }

  v83.width = v23;
  v83.height = v24;
  TSPCGSizeCopyToMessage(v83, v25);
  mMaskInfo = self->mMaskInfo;
  if (mMaskInfo)
  {
    *(a3 + 10) |= 0x10u;
    v30 = *(a3 + 10);
    if (!v30)
    {
      v31 = *(a3 + 1);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C9BB20](v31);
      *(a3 + 10) = v30;
    }

    objc_msgSend_setStrongReference_message_(v7, v27, mMaskInfo, v30);
  }

  mInstantAlphaPath = self->mInstantAlphaPath;
  if (mInstantAlphaPath)
  {
    v33 = objc_msgSend_CGPath(mInstantAlphaPath, v27, v28);
    *(a3 + 10) |= 0x100u;
    v34 = *(a3 + 14);
    if (!v34)
    {
      v35 = *(a3 + 1);
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      v34 = MEMORY[0x277C9BAC0](v35);
      *(a3 + 14) = v34;
    }

    TSPCGPathCopyToMessage(v33, v34);
  }

  mTracedPath = self->mTracedPath;
  if (mTracedPath)
  {
    v37 = objc_msgSend_CGPath(mTracedPath, v27, v28);
    *(a3 + 10) |= 0x10000u;
    v38 = *(a3 + 22);
    if (!v38)
    {
      v39 = *(a3 + 1);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = MEMORY[0x277C9BAC0](v39);
      *(a3 + 22) = v38;
    }

    TSPCGPathCopyToMessage(v37, v38);
  }

  mThumbnailImageData = self->mThumbnailImageData;
  if (mThumbnailImageData)
  {
    *(a3 + 10) |= 0x400u;
    v41 = *(a3 + 16);
    if (!v41)
    {
      v42 = *(a3 + 1);
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = MEMORY[0x277C9BA90](v42);
      *(a3 + 16) = v41;
    }

    objc_msgSend_setDataReference_message_(v7, v27, mThumbnailImageData, v41);
  }

  mImageAdjustments = self->mImageAdjustments;
  if (mImageAdjustments)
  {
    *(a3 + 10) |= 0x1000u;
    v44 = *(a3 + 18);
    if (!v44)
    {
      v45 = *(a3 + 1);
      if (v45)
      {
        v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
      }

      v44 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v45);
      *(a3 + 18) = v44;
    }

    objc_msgSend_saveToArchive_archiver_(mImageAdjustments, v27, v44, v7);
  }

  mAdjustedImageData = self->mAdjustedImageData;
  if (mAdjustedImageData)
  {
    *(a3 + 10) |= 0x2000u;
    v47 = *(a3 + 19);
    if (!v47)
    {
      v48 = *(a3 + 1);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      v47 = MEMORY[0x277C9BA90](v48);
      *(a3 + 19) = v47;
    }

    objc_msgSend_setDataReference_message_(v7, v27, mAdjustedImageData, v47);
  }

  mThumbnailAdjustedImageData = self->mThumbnailAdjustedImageData;
  if (mThumbnailAdjustedImageData)
  {
    *(a3 + 10) |= 0x4000u;
    v50 = *(a3 + 20);
    if (!v50)
    {
      v51 = *(a3 + 1);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = MEMORY[0x277C9BA90](v51);
      *(a3 + 20) = v50;
    }

    objc_msgSend_setDataReference_message_(v7, v27, mThumbnailAdjustedImageData, v50);
  }

  mEnhancedImageData = self->mEnhancedImageData;
  if (mEnhancedImageData)
  {
    *(a3 + 10) |= 0x8000u;
    v53 = *(a3 + 21);
    if (!v53)
    {
      v54 = *(a3 + 1);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277C9BA90](v54);
      *(a3 + 21) = v53;
    }

    objc_msgSend_setDataReference_message_(v7, v27, mEnhancedImageData, v53);
  }

  if (objc_msgSend_tsd_shouldBeInterpretedAsGenericIfUntagged(self->mImageData, v27, v28) & 1) != 0 || (objc_msgSend_tsd_shouldBeInterpretedAsGenericIfUntagged(self->mOriginalImageData, v55, v56))
  {
    shouldBeInterpretedAsGenericIfUntagged = 1;
  }

  else
  {
    shouldBeInterpretedAsGenericIfUntagged = objc_msgSend_tsd_shouldBeInterpretedAsGenericIfUntagged(self->mAdjustedImageData, v55, v56);
  }

  *(a3 + 10) |= 0x100000u;
  *(a3 + 204) = shouldBeInterpretedAsGenericIfUntagged;
  if (objc_msgSend_shouldTracePDFData(self, v55, v56))
  {
    *(a3 + 10) |= 0x200000u;
    *(a3 + 205) = 1;
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v7, v58, 21, a3);
  }

  v60 = objc_msgSend_SVGData(self, v58, v59);

  if (v60)
  {
    v64 = objc_msgSend_SVGData(self, v61, v62);
    *(a3 + 10) |= 0x40000u;
    v65 = *(a3 + 24);
    if (!v65)
    {
      v66 = *(a3 + 1);
      if (v66)
      {
        v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
      }

      v65 = MEMORY[0x277C9BA90](v66);
      *(a3 + 24) = v65;
    }

    objc_msgSend_setDataReference_message_(v7, v63, v64, v65);

    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v67, 23, a3);
  }

  if (objc_msgSend_backgroundRemoved(self, v61, v62))
  {
    *(a3 + 10) |= 0x400000u;
    *(a3 + 206) = 1;
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v7, v68, 22, a3);
  }

  objc_msgSend_flags(self, v68, v69);
  v72 = objc_msgSend_flags(self, v70, v71);
  *(a3 + 10) |= 0x80000u;
  *(a3 + 50) = v72;
  if (self->super._attribution)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v73, 20, a3);
    attribution = self->super._attribution;
    *(a3 + 10) |= 0x20000u;
    v76 = *(a3 + 23);
    if (!v76)
    {
      v77 = *(a3 + 1);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = google::protobuf::Arena::CreateMaybeMessage<TSD::Attribution>(v77);
      *(a3 + 23) = v76;
    }

    objc_msgSend_saveToMessage_archiver_(attribution, v74, v76, v7);
  }
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_2766830B0, off_2812F5188[84]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, v7);
}

@end