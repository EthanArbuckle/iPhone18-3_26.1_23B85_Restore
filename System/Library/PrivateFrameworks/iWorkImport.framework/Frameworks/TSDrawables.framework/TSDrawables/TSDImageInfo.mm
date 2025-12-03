@interface TSDImageInfo
+ (id)bootstrapPropertyMapForPresetIndex:(unint64_t)index inTheme:(id)theme alternate:(unint64_t)alternate;
+ (void)adjustIncomingImageGeometry:(id)geometry maskGeometry:(id)maskGeometry forImageData:(id)data maskedWithInstantAlphaPath:(id)path withNaturalSize:(CGSize)size forTargetImageGeometry:(id)imageGeometry withTargetMaskGeometry:(id)targetMaskGeometry;
+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate reservedCount:(unint64_t)count;
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)canBeDividedIntoCompoundShape;
- (BOOL)canCopyData;
- (BOOL)canResetMediaSize;
- (BOOL)isMasked;
- (BOOL)maskCanBeReset;
- (BOOL)needsDownload;
- (BOOL)p_aspectRatioUnlockedResizeWouldCauseSkew;
- (BOOL)p_canCopy:(id)copy;
- (CGAffineTransform)computeFullTransform;
- (CGPoint)centerForReplacingWithNewMedia;
- (CGSize)defaultOriginalSize;
- (CGSize)naturalSize;
- (CGSize)originalSize;
- (CGSize)rawDataSize;
- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint;
- (NSArray)childInfos;
- (NSSet)infosToObserveForAttachedInfo;
- (TSDImageInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style imageData:(id)data originalImageData:(id)imageData;
- (TSDImageInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style imageData:(id)data thumbnailImageData:(id)imageData originalImageData:(id)originalImageData imageAdjustments:(id)adjustments adjustedImageData:(id)self0 thumbnailAdjustedImageData:(id)self1;
- (TSDInfo)parentInfo;
- (TSDInfoGeometry)geometry;
- (TSPData)imageDataForExport;
- (TSPData)imageDataNonnull;
- (TSUBezierPath)instantAlphaPath;
- (TSUBezierPath)tracedPath;
- (double)descentForInlineLayout;
- (id)defaultMaskInfo;
- (id)defaultMaskInfoWithContext:(id)context;
- (id)fileDisplayName;
- (id)fileType;
- (id)geometryWithMask;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (id)objectForProperty:(int)property;
- (id)p_imageDataForFile;
- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info;
- (id)presetKind;
- (id)promisedDataForType:(id)type;
- (id)typeName;
- (id)typesToPromiseWhenCopyingSingleDrawable;
- (int64_t)mixingTypeWithObject:(id)object context:(id)context;
- (unint64_t)estimatedDataSizeForNewAdjustmentSentToServer;
- (void)dealloc;
- (void)i_forciblyRegenerateThumbnail;
- (void)i_regenerateThumbnailDataIfMissingButExpected;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_forciblyRegenerateThumbnailWhilePreservingOtherData;
- (void)p_setImageData:(id)data thumbnailData:(id)thumbnailData;
- (void)p_upgradeImageGeometry;
- (void)p_upgradeImageThumbnail;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)scaleDownSizeToFitWithinSize:(CGSize)size;
- (void)setAdjustedImageData:(id)data thumbnailData:(id)thumbnailData;
- (void)setBackgroundRemoved:(BOOL)removed;
- (void)setEnhancedImageData:(id)data;
- (void)setExteriorTextWrap:(id)wrap;
- (void)setImageAdjustments:(id)adjustments;
- (void)setInstantAlphaPath:(id)path;
- (void)setMaskInfo:(id)info;
- (void)setNaturalSize:(CGSize)size;
- (void)setOriginalImageData:(id)data;
- (void)setParentInfo:(id)info;
- (void)setShouldTracePDFData:(BOOL)data;
- (void)setStyle:(id)style;
- (void)setThumbnailAdjustedImageData:(id)data;
- (void)setThumbnailImageData:(id)data;
- (void)updateGeometryToReplaceMediaInfo:(id)info;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TSDImageInfo

- (void)setThumbnailImageData:(id)data
{
  dataCopy = data;
  if (self->mThumbnailImageData != dataCopy)
  {
    v10 = dataCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->mThumbnailImageData);
    objc_storeStrong(&self->mThumbnailImageData, data);
    objc_msgSend_didAddReferenceToData_(self, v9, v10);
    dataCopy = v10;
  }
}

- (void)setThumbnailAdjustedImageData:(id)data
{
  dataCopy = data;
  if (self->mThumbnailAdjustedImageData != dataCopy)
  {
    v10 = dataCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->mThumbnailAdjustedImageData);
    objc_storeStrong(&self->mThumbnailAdjustedImageData, data);
    objc_msgSend_didAddReferenceToData_(self, v9, v10);
    dataCopy = v10;
  }
}

- (void)setEnhancedImageData:(id)data
{
  dataCopy = data;
  if (self->mEnhancedImageData != dataCopy)
  {
    v10 = dataCopy;
    objc_msgSend_willModify(self, v6, v7);
    objc_msgSend_willRemoveReferenceToData_(self, v8, self->mEnhancedImageData);
    objc_storeStrong(&self->mEnhancedImageData, data);
    objc_msgSend_didAddReferenceToData_(self, v9, v10);
    dataCopy = v10;
  }
}

- (void)setShouldTracePDFData:(BOOL)data
{
  if (self->mShouldTracePDFData != data)
  {
    objc_msgSend_willModify(self, a2, data);
    self->mShouldTracePDFData = data;
  }
}

- (void)setBackgroundRemoved:(BOOL)removed
{
  if (self->mBackgroundRemoved != removed)
  {
    objc_msgSend_willModify(self, a2, removed);
    self->mBackgroundRemoved = removed;
  }
}

- (TSDImageInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style imageData:(id)data originalImageData:(id)imageData
{
  styleCopy = style;
  dataCopy = data;
  imageDataCopy = imageData;
  v31.receiver = self;
  v31.super_class = TSDImageInfo;
  v16 = [(TSDMediaInfo *)&v31 initWithContext:context geometry:geometry];
  if (v16)
  {
    if (!styleCopy)
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
    v28 = styleCopy;
    v29 = dataCopy;
    v30 = imageDataCopy;
    objc_msgSend_performBlockIgnoringModifications_(v27, v24, v26);
  }

  return v16;
}

- (TSDImageInfo)initWithContext:(id)context geometry:(id)geometry style:(id)style imageData:(id)data thumbnailImageData:(id)imageData originalImageData:(id)originalImageData imageAdjustments:(id)adjustments adjustedImageData:(id)self0 thumbnailAdjustedImageData:(id)self1
{
  dataCopy = data;
  imageDataCopy = imageData;
  adjustmentsCopy = adjustments;
  adjustedImageDataCopy = adjustedImageData;
  thumbnailAdjustedImageDataCopy = thumbnailAdjustedImageData;
  v21 = MEMORY[0x277D80828];
  originalImageDataCopy = originalImageData;
  styleCopy = style;
  geometryCopy = geometry;
  contextCopy = context;
  v28 = objc_msgSend_null(v21, v26, v27);
  v30 = objc_msgSend_initWithContext_geometry_style_imageData_originalImageData_(self, v29, contextCopy, geometryCopy, styleCopy, v28, originalImageDataCopy);

  if (v30)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_27667C5E8;
    v34[3] = &unk_27A6CC858;
    v35 = v30;
    v36 = dataCopy;
    v37 = imageDataCopy;
    v38 = adjustmentsCopy;
    v39 = adjustedImageDataCopy;
    v40 = thumbnailAdjustedImageDataCopy;
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

- (void)setExteriorTextWrap:(id)wrap
{
  wrapCopy = wrap;
  v7 = objc_msgSend_exteriorTextWrap(self, v5, v6);
  objc_msgSend_alphaThreshold(v7, v8, v9);
  v11 = v10;

  v20.receiver = self;
  v20.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v20 setExteriorTextWrap:wrapCopy];

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
  geometry = [(TSDDrawableInfo *)&v4 geometry];

  return geometry;
}

- (TSDInfo)parentInfo
{
  v4.receiver = self;
  v4.super_class = TSDImageInfo;
  parentInfo = [(TSDDrawableInfo *)&v4 parentInfo];

  return parentInfo;
}

- (void)setParentInfo:(id)info
{
  v3.receiver = self;
  v3.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v3 setParentInfo:info];
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

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  contextCopy = context;
  rootCopy = root;
  v10 = objc_msgSend_maskInfo(self, v8, v9);
  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v10, v11, rootCopy, contextCopy);

  v12.receiver = self;
  v12.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v12 willBeAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  self->mCurrentlyInDocument = 1;
  contextCopy = context;
  rootCopy = root;
  v10 = objc_msgSend_maskInfo(self, v8, v9);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v10, v11, rootCopy, contextCopy);

  v12.receiver = self;
  v12.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v12 wasAddedToDocumentRoot:rootCopy dolcContext:contextCopy];
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  v7 = objc_msgSend_maskInfo(self, v5, v6);
  objc_msgSend_willBeRemovedFromDocumentRoot_(v7, v8, rootCopy);

  v9.receiver = self;
  v9.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v9 willBeRemovedFromDocumentRoot:rootCopy];
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  self->mCurrentlyInDocument = 0;
  rootCopy = root;
  v7 = objc_msgSend_maskInfo(self, v5, v6);
  objc_msgSend_wasRemovedFromDocumentRoot_(v7, v8, rootCopy);

  v9.receiver = self;
  v9.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v9 wasRemovedFromDocumentRoot:rootCopy];
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

- (CGSize)targetSizeForImageData:(id)data associatedHint:(id)hint
{
  dataCopy = data;
  hintCopy = hint;
  v10 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9);

  if (v10 != hintCopy)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSDImageInfo targetSizeForImageData:associatedHint:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 405, 0, "associated hint is wrong %@", hintCopy);

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

- (BOOL)p_canCopy:(id)copy
{
  copyCopy = copy;
  if (objc_msgSend_needsDownload(copyCopy, v4, v5))
  {
    isApplicationData = objc_msgSend_isApplicationData(copyCopy, v6, v7);
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

- (void)p_setImageData:(id)data thumbnailData:(id)thumbnailData
{
  dataCopy = data;
  thumbnailDataCopy = thumbnailData;
  if (self->mImageData != dataCopy)
  {
    objc_msgSend_willChangeProperty_(self, v8, 529);
    self->mDescentForInlineLayoutValid = 0;
    objc_msgSend_willRemoveReferenceToData_(self, v10, self->mImageData);
    objc_storeStrong(&self->mImageData, data);
    objc_msgSend_didAddReferenceToData_(self, v11, dataCopy);
    if (dataCopy)
    {
      v12 = [TSDImageDataHelper alloc];
      v14 = objc_msgSend_initWithImageData_(v12, v13, dataCopy);
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&self->mImageDataHelper, v14);
    if (dataCopy)
    {
    }

    objc_msgSend_setThumbnailImageData_(self, v15, thumbnailDataCopy);
    if (!thumbnailDataCopy && self->mImageDataHelper && objc_msgSend_shouldGenerateThumbnails(self, v16, v17))
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

- (void)setOriginalImageData:(id)data
{
  dataCopy = data;
  if (self->mOriginalImageData != dataCopy)
  {
    v11 = dataCopy;
    objc_msgSend_willChangeProperty_(self, v6, 529);
    self->mDescentForInlineLayoutValid = 0;
    objc_msgSend_willModify(self, v7, v8);
    objc_msgSend_willRemoveReferenceToData_(self, v9, self->mOriginalImageData);
    objc_storeStrong(&self->mOriginalImageData, data);
    objc_msgSend_didAddReferenceToData_(self, v10, v11);
    dataCopy = v11;
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

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (self->mStyle != styleCopy)
  {
    v12 = styleCopy;
    v8 = objc_msgSend_properties(TSDMediaStyle, v6, v7);
    objc_msgSend_willChangeProperties_(self, v9, v8);

    objc_msgSend_willModify(self, v10, v11);
    objc_storeStrong(&self->mStyle, style);
    styleCopy = v12;
  }
}

- (id)pastedPropertyMapForStyle:(id)style tailLineEndInfo:(int)info
{
  v4 = objc_msgSend_fullPropertyMap(style, a2, style, *&info);
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
  canResetMediaSize = [(TSDMediaInfo *)&v9 canResetMediaSize];
  if (canResetMediaSize)
  {
    objc_msgSend_rawDataSize(self, v4, v5);
    LOBYTE(canResetMediaSize) = v7 != *(MEMORY[0x277CBF3A8] + 8) || v6 != *MEMORY[0x277CBF3A8];
  }

  return canResetMediaSize;
}

- (void)setMaskInfo:(id)info
{
  infoCopy = info;
  if (self->mMaskInfo != infoCopy)
  {
    v29 = infoCopy;
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
    objc_storeStrong(&self->mMaskInfo, info);
    objc_msgSend_setParentInfo_(self->mMaskInfo, v19, self);
    if (self->mCurrentlyInDocument)
    {
      v22 = objc_msgSend_documentRoot(self, v20, v21);
      objc_msgSend_wasRemovedFromDocumentRoot_(v12, v23, v22);

      mMaskInfo = self->mMaskInfo;
      v27 = objc_msgSend_documentRoot(self, v25, v26);
      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(mMaskInfo, v28, v27, v9);
    }

    infoCopy = v29;
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

- (void)setInstantAlphaPath:(id)path
{
  pathCopy = path;
  if (self->mInstantAlphaPath != pathCopy)
  {
    v7 = pathCopy;
    objc_msgSend_willChangeProperty_(self, v6, 531);
    objc_storeStrong(&self->mInstantAlphaPath, path);
    pathCopy = v7;
  }
}

- (void)setImageAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  v5 = adjustmentsCopy;
  mImageAdjustments = self->mImageAdjustments;
  if (adjustmentsCopy | mImageAdjustments)
  {
    v13 = adjustmentsCopy;
    isEqual = objc_msgSend_isEqual_(adjustmentsCopy, adjustmentsCopy, mImageAdjustments);
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

- (void)setAdjustedImageData:(id)data thumbnailData:(id)thumbnailData
{
  dataCopy = data;
  thumbnailDataCopy = thumbnailData;
  if (self->mAdjustedImageData != dataCopy)
  {
    objc_msgSend_willChangeProperty_(self, v8, 529);
    self->mDescentForInlineLayoutValid = 0;
    objc_msgSend_willRemoveReferenceToData_(self, v10, self->mAdjustedImageData);
    objc_storeStrong(&self->mAdjustedImageData, data);
    objc_msgSend_didAddReferenceToData_(self, v11, dataCopy);
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

    objc_msgSend_setThumbnailAdjustedImageData_(self, v16, thumbnailDataCopy);
    if (!thumbnailDataCopy && self->mAdjustedImageDataHelper && objc_msgSend_shouldGenerateThumbnails(self, v17, v18))
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

- (id)objectForProperty:(int)property
{
  switch(property)
  {
    case 531:
      v3 = objc_msgSend_instantAlphaPath(self, a2, *&property);
      break;
    case 530:
      v3 = objc_msgSend_maskInfo(self, a2, *&property);
      break;
    case 529:
      v3 = objc_msgSend_imageData(self, a2, *&property);
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

- (id)defaultMaskInfoWithContext:(id)context
{
  contextCopy = context;
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
  v63 = objc_msgSend_initWithContext_geometry_pathSource_(v61, v62, contextCopy, v33, v39);

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
  typesToPromiseWhenCopyingSingleDrawable = [(TSDDrawableInfo *)&v21 typesToPromiseWhenCopyingSingleDrawable];
  if (objc_msgSend_hasPDFDataForCopy(self, v4, v5))
  {
    v8 = objc_msgSend_identifier(*MEMORY[0x277CE1E08], v6, v7);
    v10 = v8;
    if (typesToPromiseWhenCopyingSingleDrawable)
    {
      v11 = objc_msgSend_arrayByAddingObject_(typesToPromiseWhenCopyingSingleDrawable, v9, v8);

      typesToPromiseWhenCopyingSingleDrawable = v11;
    }

    else
    {
      v23[0] = v8;
      typesToPromiseWhenCopyingSingleDrawable = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v23, 1);
    }
  }

  v12 = objc_msgSend_SVGData(self, v6, v7);

  if (v12)
  {
    v15 = objc_msgSend_identifier(*MEMORY[0x277CE1E68], v13, v14);
    v22 = v15;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v16, &v22, 1);

    if (typesToPromiseWhenCopyingSingleDrawable)
    {
      v19 = objc_msgSend_arrayByAddingObjectsFromArray_(v17, v18, typesToPromiseWhenCopyingSingleDrawable);

      typesToPromiseWhenCopyingSingleDrawable = v19;
    }

    else
    {
      typesToPromiseWhenCopyingSingleDrawable = v17;
    }
  }

  return typesToPromiseWhenCopyingSingleDrawable;
}

- (id)promisedDataForType:(id)type
{
  typeCopy = type;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_27667EF98;
  v51 = sub_27667EFA8;
  v52 = 0;
  v7 = objc_msgSend_identifier(*MEMORY[0x277CE1E08], v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(typeCopy, v8, v7);

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
    v35 = objc_msgSend_isEqualToString_(typeCopy, v34, v33);

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
      v42 = [(TSDDrawableInfo *)&v45 promisedDataForType:typeCopy];
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

- (void)scaleDownSizeToFitWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)updateGeometryToReplaceMediaInfo:(id)info
{
  infoCopy = info;
  v6 = objc_msgSend_geometry(infoCopy, v4, v5);
  v9 = objc_msgSend_copy(v6, v7, v8);

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_msgSend_maskInfo(infoCopy, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v15 = objc_msgSend_maskInfo(infoCopy, v13, v14);
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
    objc_msgSend_originalSize(infoCopy, v44, v45);
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

+ (void)adjustIncomingImageGeometry:(id)geometry maskGeometry:(id)maskGeometry forImageData:(id)data maskedWithInstantAlphaPath:(id)path withNaturalSize:(CGSize)size forTargetImageGeometry:(id)imageGeometry withTargetMaskGeometry:(id)targetMaskGeometry
{
  height = size.height;
  width = size.width;
  geometryCopy = geometry;
  maskGeometryCopy = maskGeometry;
  dataCopy = data;
  pathCopy = path;
  imageGeometryCopy = imageGeometry;
  targetMaskGeometryCopy = targetMaskGeometry;
  if (geometryCopy)
  {
    if (maskGeometryCopy)
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
    if (maskGeometryCopy)
    {
LABEL_3:
      if (dataCopy)
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
  if (dataCopy)
  {
LABEL_4:
    if (imageGeometryCopy)
    {
      goto LABEL_5;
    }

LABEL_28:
    v85 = MEMORY[0x277D81150];
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]");
    v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v89, v86, v88, 1191, 0, "invalid nil value for '%{public}s'", "targetImageGeometry");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91);
    if (targetMaskGeometryCopy)
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
  if (!imageGeometryCopy)
  {
    goto LABEL_28;
  }

LABEL_5:
  if (targetMaskGeometryCopy)
  {
LABEL_6:
    objc_msgSend_transformedBounds(targetMaskGeometryCopy, v19, v20);
    goto LABEL_7;
  }

LABEL_29:
  v92 = [TSDInfoGeometry alloc];
  objc_msgSend_size(imageGeometryCopy, v93, v94);
  targetMaskGeometryCopy = objc_msgSend_initWithPosition_size_(v92, v95, v96, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), v97, v98);
  objc_msgSend_transformedBounds(targetMaskGeometryCopy, v99, v100);
LABEL_7:
  v26 = v24;
  v27 = v25;
  v28 = objc_msgSend_sharedPool(TSDImageProviderPool, v22, v23);
  v30 = objc_msgSend_providerForData_shouldValidate_(v28, v29, dataCopy, 1);

  v164 = v30;
  objc_msgSend_naturalSize(v30, v31, v32);
  v37 = v36;
  v38 = v35;
  v40 = *MEMORY[0x277CBF3A8];
  v39 = *(MEMORY[0x277CBF3A8] + 8);
  if (v36 == *MEMORY[0x277CBF3A8] && v35 == v39)
  {
    objc_opt_class();
    v44 = objc_msgSend_attributes(dataCopy, v42, v43);
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

  v165 = pathCopy;
  if (!pathCopy)
  {
    goto LABEL_32;
  }

  if (width == v40 && height == v39)
  {
    v57 = MEMORY[0x277D81150];
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]", height);
    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v61, v58, v60, 1223, 0, "instant alpha paths require non-zero natural sizes");

    pathCopy = v165;
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

    pathCopy = v165;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v106, v107);
LABEL_32:
    v108 = v54;
    v109 = v53;
    objc_msgSend_setSize_(geometryCopy, v33, v34, fmaxf(v108, 1.0), fmaxf(v109, 1.0));
    objc_msgSend_center(targetMaskGeometryCopy, v110, v111);
    if (imageGeometryCopy)
    {
      v161 = v115;
      v163 = v114;
      objc_msgSend_transform(imageGeometryCopy, v112, v113);
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
    objc_msgSend_setCenter_(geometryCopy, v112, v113, vaddq_f64(v118, vmlaq_n_f64(vmulq_n_f64(v116, v115), v117, v114)));
    objc_msgSend_size(geometryCopy, v120, v121);
    TSURectWithSize();
    TSUCenterOfRect();
    goto LABEL_36;
  }

  CGAffineTransformMakeScale(&v166, v37 / width, v38 / height);
  objc_msgSend_transformUsingAffineTransform_(pathCopy, v135, &v166);
  objc_msgSend_bounds(pathCopy, v136, v137);
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v145 = v144;
  TSUFitOrFillSizeInSize();
  *&v146 = v146;
  *&v147 = v147;
  v148 = fmaxf(*&v146, 1.0) / v143;
  v149 = fmaxf(*&v147, 1.0) / v145;
  objc_msgSend_setSize_(geometryCopy, v150, v151, v37 * v148, v38 * v149);
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
  objc_msgSend_center(targetMaskGeometryCopy, v152, v153);
  if (imageGeometryCopy)
  {
    objc_msgSend_transform(imageGeometryCopy, v154, v155);
  }

  v119 = 0x277D81000;
  TSUAddPoints();
  objc_msgSend_setCenter_(geometryCopy, v156, v157);
  objc_msgSend_size(geometryCopy, v158, v159);
  TSURectWithSize();
  TSUCenterOfRect();
  TSUSubtractPoints();
LABEL_36:
  objc_msgSend_setCenter_(maskGeometryCopy, v122, v123);
  if (!objc_msgSend_heightValid(geometryCopy, v124, v125) || (objc_msgSend_widthValid(geometryCopy, v126, v127) & 1) == 0)
  {
    v128 = *(v119 + 336);
    v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, "+[TSDImageInfo adjustIncomingImageGeometry:maskGeometry:forImageData:maskedWithInstantAlphaPath:withNaturalSize:forTargetImageGeometry:withTargetMaskGeometry:]");
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v128, v132, v129, v131, 1289, 0, "returning an image geometry with invalid height/width.");

    pathCopy = v165;
    objc_msgSend_logBacktraceThrottled(*(v119 + 336), v133, v134);
  }
}

- (TSUBezierPath)tracedPath
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->mTracedPath;
  if (v5)
  {
    goto LABEL_24;
  }

  v6 = objc_msgSend_sharedPool(TSDImageProviderPool, v3, v4);
  v9 = objc_msgSend_imageData(selfCopy, v7, v8);
  v11 = objc_msgSend_providerForData_shouldValidate_(v6, v10, v9, 1);

  objc_opt_class();
  v12 = TSUDynamicCast();
  shouldTracePDFData = objc_msgSend_shouldTracePDFData(selfCopy, v13, v14);
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
    v44 = objc_msgSend_exteriorTextWrap(selfCopy, v41, v42);
    objc_msgSend_alphaThreshold(v44, v45, v46);
    v48 = v47;

    v5 = objc_msgSend_tracedPathForImage_alphaThreshold_pointSpacing_(MEMORY[0x277D81160], v49, v43, v48, 2.0);
    if (v5)
    {
      Width = CGImageGetWidth(v43);
      Height = CGImageGetHeight(v43);
      objc_msgSend_naturalSize(selfCopy, v52, v53);
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
    objc_msgSend_naturalSize(selfCopy, v3, v4);
    TSURectWithSize();
    v5 = objc_msgSend_bezierPathWithRect_(v73, v74, v75);
    if (!v5)
    {
      goto LABEL_26;
    }
  }

LABEL_24:
  if (objc_msgSend_canModify(selfCopy, v3, v4))
  {
    objc_msgSend_willModify(selfCopy, v76, v77);
    objc_storeStrong(&selfCopy->mTracedPath, v5);
  }

LABEL_26:
  objc_sync_exit(selfCopy);

  return v5;
}

- (CGSize)naturalSize
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_width = &selfCopy->mNaturalSize.width;
  if (selfCopy->mNaturalSize.width == *MEMORY[0x277CBF3A8] && selfCopy->mNaturalSize.height == *(MEMORY[0x277CBF3A8] + 8))
  {
    if (!selfCopy->mImageDataHelper)
    {
      v7 = objc_msgSend_imageData(selfCopy, v3, v4);

      if (v7)
      {
        v8 = MEMORY[0x277D81150];
        v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSDImageInfo naturalSize]");
        v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 1359, 0, "no data helper for our data!");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
      }
    }

    if (objc_msgSend_canModify(selfCopy, v3, v4) && selfCopy->mImageDataHelper)
    {
      objc_msgSend_willModify(selfCopy, v15, v16);
      objc_msgSend_naturalSize(selfCopy->mImageDataHelper, v17, v18);
      *p_width = v19;
      selfCopy->mNaturalSize.height = v20;
    }
  }

  objc_sync_exit(selfCopy);

  v21 = *p_width;
  height = selfCopy->mNaturalSize.height;
  result.height = height;
  result.width = v21;
  return result;
}

- (void)setNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_mNaturalSize = &self->mNaturalSize;
  if (size.width != self->mNaturalSize.width || size.height != self->mNaturalSize.height)
  {
    obj = self;
    objc_sync_enter(obj);
    objc_msgSend_willModify(obj, v7, v8);
    p_mNaturalSize->width = width;
    p_mNaturalSize->height = height;
    objc_sync_exit(obj);
  }
}

- (int64_t)mixingTypeWithObject:(id)object context:(id)context
{
  contextCopy = context;
  objectCopy = object;
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
  v30 = TSDMixingTypeWithObjects(v26, v29, contextCopy);
  v31 = TSDMixingTypeBestFromMixingTypes(5, v30);

  v34 = objc_msgSend_imageAdjustments(self, v32, v33);
  v37 = objc_msgSend_imageAdjustments(v8, v35, v36);
  v38 = TSDMixingTypeWithObjects(v34, v37, contextCopy);
  v39 = TSDMixingTypeBestFromMixingTypes(v31, v38);

  if ((objc_msgSend_maskCanBeReset(self, v40, v41) & 1) != 0 || objc_msgSend_maskCanBeReset(v8, v42, v43))
  {
    v44 = objc_msgSend_maskInfo(self, v42, v43);
    v47 = objc_msgSend_maskInfo(v8, v45, v46);
    v48 = TSDMixingTypeWithObjects(v44, v47, contextCopy);
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

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v7 = TSUDynamicCast();

  v10 = objc_msgSend_geometry(self, v8, v9);
  v13 = objc_msgSend_geometry(v7, v11, v12);
  v14 = TSDMixingMixedObjectWithFraction(v10, v13, fraction);

  v17 = objc_msgSend_imageStyle(self, v15, v16);
  v20 = objc_msgSend_imageStyle(v7, v18, v19);
  v21 = TSDMixingMixedObjectWithFraction(v17, v20, fraction);

  v24 = objc_msgSend_maskInfo(self, v22, v23);
  v27 = objc_msgSend_maskInfo(v7, v25, v26);
  v28 = TSDMixingMixedObjectWithFraction(v24, v27, fraction);

  v29 = [TSDImageInfo alloc];
  v32 = objc_msgSend_context(self, v30, v31);
  v35 = objc_msgSend_imageData(self, v33, v34);
  v37 = objc_msgSend_initWithContext_geometry_style_imageData_originalImageData_(v29, v36, v32, v14, v21, v35, 0);

  objc_msgSend_setMaskInfo_(v37, v38, v28);

  return v37;
}

+ (id)bootstrapPropertyMapForPresetIndex:(unint64_t)index inTheme:(id)theme alternate:(unint64_t)alternate
{
  v8 = objc_msgSend_colors(theme, a2, index);
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSDImageInfo bootstrapPropertyMapForPresetIndex:inTheme:alternate:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDImageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1484, 0, "invalid nil value for '%{public}s'", "colors");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v17 = objc_alloc_init(MEMORY[0x277D80AB8]);
  if (alternate <= 5 && ((1 << alternate) & 0x2B) != 0)
  {
    if (index > 2)
    {
      if (index != 3)
      {
        if (index != 4)
        {
          if (index != 5)
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

    if (index != 1)
    {
      if (index != 2)
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

  if (index > 2)
  {
    if (index != 3)
    {
      if (index != 4)
      {
        if (index != 5)
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

  if (index == 1)
  {
    v50 = [TSDReflection alloc];
    v44 = objc_msgSend_initWithOpacity_(v50, v51, v52, 0.27);
    goto LABEL_27;
  }

  if (index == 2)
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

+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate reservedCount:(unint64_t)count
{
  themeCopy = theme;
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v10 = 6 - count;
  v12 = objc_msgSend_initWithCapacity_(v9, v11, 6 - count);
  if (count != 6)
  {
    v13 = 0;
    do
    {
      v14 = sub_27669981C(v13);
      v15 = [TSDMediaStyle alloc];
      v18 = objc_msgSend_context(themeCopy, v16, v17);
      v20 = objc_msgSend_initWithContext_(v15, v19, v18);

      v22 = objc_msgSend_bootstrapPropertyMapForPresetIndex_inTheme_alternate_(self, v21, v13, themeCopy, alternate);
      objc_msgSend_setValuesForProperties_(v20, v23, v22);
      v26 = objc_msgSend_documentStylesheet(themeCopy, v24, v25);
      objc_msgSend_addStyle_withIdentifier_(v26, v27, v20, v14);

      objc_msgSend_addObject_(v12, v28, v20);
      ++v13;
    }

    while (v10 != v13);
  }

  v29 = objc_alloc(MEMORY[0x277CBEA60]);
  v31 = objc_msgSend_initWithArray_(v29, v30, v12);
  objc_msgSend_setPresets_ofKind_(themeCopy, v32, v31, *MEMORY[0x277D80B38]);
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

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 6))
  {
    v7 = *(archive + 6);
  }

  else
  {
    v7 = &TSD::_DrawableArchive_default_instance_;
  }

  v164.receiver = self;
  v164.super_class = TSDImageInfo;
  [(TSDDrawableInfo *)&v164 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v9 = *MEMORY[0x277CBF3A8];
  v10 = *(MEMORY[0x277CBF3A8] + 8);
  v11 = *(archive + 10);
  if ((v11 & 2) != 0)
  {
    v23 = *(archive + 7);
    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 3221225472;
    v163[2] = sub_276681E3C;
    v163[3] = &unk_27A6CC8D0;
    v163[4] = self;
    v24 = unarchiverCopy;
    v25 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v24, v26, v23, v25, 0, v163);
  }

  else if ((v11 & 0x200) != 0)
  {
    v12 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v8, *(archive + 15));
    if (objc_msgSend_isApplicationData(v12, v13, v14) && (objc_msgSend_isReadable(v12, v15, v16) & 1) == 0)
    {
      if ((*(archive + 41) & 4) != 0)
      {
        v107 = objc_msgSend_readDataReferenceMessage_(unarchiverCopy, v17, *(archive + 16));
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
  v27 = *(archive + 8);
  v161[0] = MEMORY[0x277D85DD0];
  v161[1] = 3221225472;
  v161[2] = sub_276681EB8;
  v161[3] = &unk_27A6CC8F8;
  v161[4] = self;
  v28 = unarchiverCopy;
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
  if ((*(archive + 40) & 8) != 0)
  {
    v34 = v9;
    v35 = v10;
    if ((v21 & 1) == 0)
    {
      TSPCGSizeCreateFromMessage(*(archive + 9));
    }
  }

  else
  {
    objc_msgSend_defaultOriginalSize(self, v32, v33);
  }

  self->super._originalSize.width = v34;
  self->super._originalSize.height = v35;
  v36 = *(archive + 10);
  if ((v36 & 0x10) != 0)
  {
    v37 = objc_msgSend_sourceType(v28, v32, v33);
    v38 = *(archive + 10);
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

    v36 = *(archive + 10);
  }

  if ((v36 & 0x100) != 0)
  {
    v42 = TSPCGPathCreateFromMessage(*(archive + 14));
    v44 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v43, v42);
    mInstantAlphaPath = self->mInstantAlphaPath;
    self->mInstantAlphaPath = v44;

    CGPathRelease(v42);
    v36 = *(archive + 10);
  }

  if ((v36 & 0x10000) != 0)
  {
    v46 = TSPCGPathCreateFromMessage(*(archive + 22));
    v48 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v47, v46);
    mTracedPath = self->mTracedPath;
    self->mTracedPath = v48;

    CGPathRelease(v46);
    v36 = *(archive + 10);
  }

  if ((v36 & 0x20) != 0)
  {
    v50 = *(archive + 11);
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
      v105 = objc_msgSend_readDataReferenceMessage_(v28, 0, *(archive + 16));
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

  v68 = *(archive + 10);
  if ((v68 & 0x40) != 0)
  {
    v71 = *(archive + 12);
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
    v69 = objc_msgSend_readDataReferenceMessage_(v28, v66, *(archive + 17));
    mOriginalImageData = self->mOriginalImageData;
    self->mOriginalImageData = v69;
  }

  if ((*(archive + 42) & 4) != 0)
  {
    v75 = objc_msgSend_readDataReferenceMessage_(v28, v66, *(archive + 24));
    v76 = self->mOriginalImageData;
    self->mOriginalImageData = v75;
  }

  v156[0] = MEMORY[0x277D85DD0];
  v156[1] = 3221225472;
  v156[2] = sub_276682054;
  v156[3] = &unk_27A6CC790;
  v156[4] = self;
  objc_msgSend_addFinalizeHandler_(v28, v66, v156);
  v78 = *(archive + 10);
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

  TSPCGSizeCreateFromMessage(*(archive + 13));
  self->mNaturalSize.width = v79;
  self->mNaturalSize.height = v80;
  if ((*(archive + 10) & 0x80000) != 0)
  {
LABEL_50:
    objc_msgSend_setFlags_(self, v77, *(archive + 50));
  }

LABEL_52:
  v81 = *(archive + 6);
  if (!v81)
  {
    v81 = &TSD::_DrawableArchive_default_instance_;
  }

  if ((v81[17] & 2) == 0)
  {
    self->super.super.super.mAspectRatioLocked = 1;
  }

  v82 = *(archive + 10);
  if ((v82 & 0x1000) != 0)
  {
    v83 = [TSDImageAdjustments alloc];
    if (*(archive + 18))
    {
      v85 = objc_msgSend_initWithArchive_unarchiver_(v83, v84, *(archive + 18), v28);
    }

    else
    {
      v85 = objc_msgSend_initWithArchive_unarchiver_(v83, v84, &TSD::_ImageAdjustmentsArchive_default_instance_, v28);
    }

    mImageAdjustments = self->mImageAdjustments;
    self->mImageAdjustments = v85;

    v82 = *(archive + 10);
  }

  if ((v82 & 0x2000) != 0)
  {
    v87 = objc_msgSend_readDataReferenceMessage_(v28, v77, *(archive + 19));
    v88 = self->mAdjustedImageData;
    self->mAdjustedImageData = v87;

    v82 = *(archive + 10);
  }

  if ((v82 & 0x4000) != 0)
  {
    v89 = objc_msgSend_readDataReferenceMessage_(v28, v77, *(archive + 20));
    v90 = self->mThumbnailAdjustedImageData;
    self->mThumbnailAdjustedImageData = v89;

    v82 = *(archive + 10);
  }

  if ((v82 & 0x8000) != 0)
  {
    v91 = objc_msgSend_readDataReferenceMessage_(v28, v77, *(archive + 21));
    mEnhancedImageData = self->mEnhancedImageData;
    self->mEnhancedImageData = v91;

    v82 = *(archive + 10);
  }

  if ((v82 & 0x20000) != 0)
  {
    v93 = [TSDAttribution alloc];
    if (*(archive + 23))
    {
      v95 = objc_msgSend_initFromMessage_unarchiver_(v93, v94, *(archive + 23), v28);
    }

    else
    {
      v95 = objc_msgSend_initFromMessage_unarchiver_(v93, v94, &TSD::_Attribution_default_instance_, v28);
    }

    attribution = self->super._attribution;
    self->super._attribution = v95;

    v82 = *(archive + 10);
  }

  if ((v82 & 0x100000) != 0)
  {
    v97 = *(archive + 204);
    v154[0] = MEMORY[0x277D85DD0];
    v154[1] = 3221225472;
    v154[2] = sub_27668234C;
    v154[3] = &unk_27A6CC948;
    v154[4] = self;
    v155 = v97;
    objc_msgSend_addFinalizeHandler_(v28, v77, v154);
  }

  objc_msgSend_setShouldTracePDFData_(self, v77, *(archive + 205));
  objc_msgSend_setBackgroundRemoved_(self, v98, *(archive + 206));
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

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812F5188[84]);

  objc_msgSend_loadFromArchive_unarchiver_(self, v6, v5, unarchiverCopy);
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

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = sub_276682F6C;
  v78[3] = &unk_27A6CC520;
  archiveCopy = archive;
  v7 = archiverCopy;
  v79 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, archive, v78);
  mImageData = self->mImageData;
  if (mImageData)
  {
    *(archive + 10) |= 0x200u;
    v11 = *(archive + 15);
    if (!v11)
    {
      v12 = *(archive + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C9BA90](v12);
      *(archive + 15) = v11;
    }

    objc_msgSend_setDataReference_message_(v7, v9, mImageData, v11);
  }

  mOriginalImageData = self->mOriginalImageData;
  if (mOriginalImageData)
  {
    *(archive + 10) |= 0x800u;
    v14 = *(archive + 17);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C9BA90](v15);
      *(archive + 17) = v14;
    }

    objc_msgSend_setDataReference_message_(v7, v9, mOriginalImageData, v14);
  }

  mStyle = self->mStyle;
  *(archive + 10) |= 4u;
  v17 = *(archive + 8);
  if (!v17)
  {
    v18 = *(archive + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x277C9BB20](v18);
    *(archive + 8) = v17;
  }

  objc_msgSend_setStrongReference_message_(v7, v9, mStyle, v17);
  width = self->super._originalSize.width;
  height = self->super._originalSize.height;
  *(archive + 10) |= 8u;
  v21 = *(archive + 9);
  if (!v21)
  {
    v22 = *(archive + 1);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x277C9BAD0](v22);
    *(archive + 9) = v21;
  }

  v82.width = width;
  v82.height = height;
  TSPCGSizeCopyToMessage(v82, v21);
  v23 = self->mNaturalSize.width;
  v24 = self->mNaturalSize.height;
  *(archive + 10) |= 0x80u;
  v25 = *(archive + 13);
  if (!v25)
  {
    v26 = *(archive + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x277C9BAD0](v26);
    *(archive + 13) = v25;
  }

  v83.width = v23;
  v83.height = v24;
  TSPCGSizeCopyToMessage(v83, v25);
  mMaskInfo = self->mMaskInfo;
  if (mMaskInfo)
  {
    *(archive + 10) |= 0x10u;
    v30 = *(archive + 10);
    if (!v30)
    {
      v31 = *(archive + 1);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C9BB20](v31);
      *(archive + 10) = v30;
    }

    objc_msgSend_setStrongReference_message_(v7, v27, mMaskInfo, v30);
  }

  mInstantAlphaPath = self->mInstantAlphaPath;
  if (mInstantAlphaPath)
  {
    v33 = objc_msgSend_CGPath(mInstantAlphaPath, v27, v28);
    *(archive + 10) |= 0x100u;
    v34 = *(archive + 14);
    if (!v34)
    {
      v35 = *(archive + 1);
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      v34 = MEMORY[0x277C9BAC0](v35);
      *(archive + 14) = v34;
    }

    TSPCGPathCopyToMessage(v33, v34);
  }

  mTracedPath = self->mTracedPath;
  if (mTracedPath)
  {
    v37 = objc_msgSend_CGPath(mTracedPath, v27, v28);
    *(archive + 10) |= 0x10000u;
    v38 = *(archive + 22);
    if (!v38)
    {
      v39 = *(archive + 1);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = MEMORY[0x277C9BAC0](v39);
      *(archive + 22) = v38;
    }

    TSPCGPathCopyToMessage(v37, v38);
  }

  mThumbnailImageData = self->mThumbnailImageData;
  if (mThumbnailImageData)
  {
    *(archive + 10) |= 0x400u;
    v41 = *(archive + 16);
    if (!v41)
    {
      v42 = *(archive + 1);
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = MEMORY[0x277C9BA90](v42);
      *(archive + 16) = v41;
    }

    objc_msgSend_setDataReference_message_(v7, v27, mThumbnailImageData, v41);
  }

  mImageAdjustments = self->mImageAdjustments;
  if (mImageAdjustments)
  {
    *(archive + 10) |= 0x1000u;
    v44 = *(archive + 18);
    if (!v44)
    {
      v45 = *(archive + 1);
      if (v45)
      {
        v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
      }

      v44 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v45);
      *(archive + 18) = v44;
    }

    objc_msgSend_saveToArchive_archiver_(mImageAdjustments, v27, v44, v7);
  }

  mAdjustedImageData = self->mAdjustedImageData;
  if (mAdjustedImageData)
  {
    *(archive + 10) |= 0x2000u;
    v47 = *(archive + 19);
    if (!v47)
    {
      v48 = *(archive + 1);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      v47 = MEMORY[0x277C9BA90](v48);
      *(archive + 19) = v47;
    }

    objc_msgSend_setDataReference_message_(v7, v27, mAdjustedImageData, v47);
  }

  mThumbnailAdjustedImageData = self->mThumbnailAdjustedImageData;
  if (mThumbnailAdjustedImageData)
  {
    *(archive + 10) |= 0x4000u;
    v50 = *(archive + 20);
    if (!v50)
    {
      v51 = *(archive + 1);
      if (v51)
      {
        v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
      }

      v50 = MEMORY[0x277C9BA90](v51);
      *(archive + 20) = v50;
    }

    objc_msgSend_setDataReference_message_(v7, v27, mThumbnailAdjustedImageData, v50);
  }

  mEnhancedImageData = self->mEnhancedImageData;
  if (mEnhancedImageData)
  {
    *(archive + 10) |= 0x8000u;
    v53 = *(archive + 21);
    if (!v53)
    {
      v54 = *(archive + 1);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277C9BA90](v54);
      *(archive + 21) = v53;
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

  *(archive + 10) |= 0x100000u;
  *(archive + 204) = shouldBeInterpretedAsGenericIfUntagged;
  if (objc_msgSend_shouldTracePDFData(self, v55, v56))
  {
    *(archive + 10) |= 0x200000u;
    *(archive + 205) = 1;
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v7, v58, 21, archive);
  }

  v60 = objc_msgSend_SVGData(self, v58, v59);

  if (v60)
  {
    v64 = objc_msgSend_SVGData(self, v61, v62);
    *(archive + 10) |= 0x40000u;
    v65 = *(archive + 24);
    if (!v65)
    {
      v66 = *(archive + 1);
      if (v66)
      {
        v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
      }

      v65 = MEMORY[0x277C9BA90](v66);
      *(archive + 24) = v65;
    }

    objc_msgSend_setDataReference_message_(v7, v63, v64, v65);

    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v67, 23, archive);
  }

  if (objc_msgSend_backgroundRemoved(self, v61, v62))
  {
    *(archive + 10) |= 0x400000u;
    *(archive + 206) = 1;
    objc_msgSend_setIgnoreAndPreserveUntilModifiedRuleForField_message_(v7, v68, 22, archive);
  }

  objc_msgSend_flags(self, v68, v69);
  v72 = objc_msgSend_flags(self, v70, v71);
  *(archive + 10) |= 0x80000u;
  *(archive + 50) = v72;
  if (self->super._attribution)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v73, 20, archive);
    attribution = self->super._attribution;
    *(archive + 10) |= 0x20000u;
    v76 = *(archive + 23);
    if (!v76)
    {
      v77 = *(archive + 1);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = google::protobuf::Arena::CreateMaybeMessage<TSD::Attribution>(v77);
      *(archive + 23) = v76;
    }

    objc_msgSend_saveToMessage_archiver_(attribution, v74, v76, v7);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2766830B0, off_2812F5188[84]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

@end