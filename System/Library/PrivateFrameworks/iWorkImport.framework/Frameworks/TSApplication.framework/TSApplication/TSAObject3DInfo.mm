@interface TSAObject3DInfo
+ (id)p_defaultStyleWithContext:(id)a3;
- (BOOL)canCopyData;
- (BOOL)canPlayEmbeddedAnimationsInSlideshow;
- (BOOL)isUSDZ;
- (BOOL)needsDownload;
- (BOOL)p_canCopy:(id)a3;
- (BOOL)readyForQuicklook;
- (BOOL)readyToPlayAnimations;
- (CGRect)boundingRect;
- (CGRect)visibleBounds;
- (NSString)fileDisplayName;
- (NSString)fileType;
- (TSAObject3DInfo)initWithContext:(id)a3 geometry:(id)a4 objectData:(id)a5 thumbnailImageData:(id)a6;
- (TSAObject3DInfo)initWithContext:(id)a3 geometry:(id)a4 objectData:(id)a5 thumbnailImageData:(id)a6 embeddedAnimations:(BOOL)a7 boundingRect:(CGRect)a8 tracedPath:(id)a9;
- (TSAObject3DInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 objectData:(id)a6 thumbnailImageData:(id)a7;
- (float)opacity;
- (id)computeInfoGeometryForFittingInFrame:(CGRect)a3;
- (id)defaultDescriptiveName;
- (id)infoGeometryForVisiblePositioningInfoGeometry:(id)a3;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (id)pastedPropertyMapForStyle:(id)a3 tailLineEndInfo:(int)a4;
- (id)promisedDataForType:(id)a3;
- (id)typesToPromiseWhenCopyingSingleDrawable;
- (int64_t)mixingTypeWithObject:(id)a3 context:(id)a4;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)didInitFromSOS;
- (void)i_setThumbnailImageData:(id)a3;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
- (void)scaleDownSizeToFitWithinSize:(CGSize)a3;
- (void)setAspectRatioLocked:(BOOL)a3;
- (void)setHasEmbeddedAnimations:(BOOL)a3;
- (void)setObjectData:(id)a3;
- (void)setOpacity:(float)a3;
- (void)setPlaysAnimations:(BOOL)a3;
- (void)setStyle:(id)a3;
- (void)setThumbnailImageData:(id)a3;
- (void)takeGeometryFromReplaced3DInfo:(id)a3;
- (void)takeGeometryFromReplaced3DLayout:(id)a3 info:(id)a4;
- (void)takePropertiesFromReplaced3DInfo:(id)a3;
@end

@implementation TSAObject3DInfo

- (void)setObjectData:(id)a3
{
  v5 = a3;
  if (self->_objectData != v5)
  {
    v13 = v5;
    objc_msgSend_willModify(self, v6, v7, v8);
    objc_msgSend_willRemoveReferenceToData_(self, v9, self->_objectData, v10);
    objc_storeStrong(&self->_objectData, a3);
    objc_msgSend_didAddReferenceToData_(self, v11, v13, v12);
    v5 = v13;
  }
}

- (void)i_setThumbnailImageData:(id)a3
{
  v5 = a3;
  if (self->_thumbnailImageData != v5)
  {
    v13 = v5;
    objc_msgSend_willModify(self, v6, v7, v8);
    objc_msgSend_willRemoveReferenceToData_(self, v9, self->_thumbnailImageData, v10);
    objc_storeStrong(&self->_thumbnailImageData, a3);
    objc_msgSend_didAddReferenceToData_(self, v11, v13, v12);
    v5 = v13;
  }
}

- (void)setPlaysAnimations:(BOOL)a3
{
  if (self->_playsAnimations != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3);
    self->_playsAnimations = a3;
  }
}

- (void)setHasEmbeddedAnimations:(BOOL)a3
{
  if (self->_hasEmbeddedAnimations != a3)
  {
    objc_msgSend_willModify(self, a2, a3, v3);
    self->_hasEmbeddedAnimations = a3;
  }
}

- (void)setThumbnailImageData:(id)a3
{
  if (self->_thumbnailImageData != a3)
  {
    v12 = a3;
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_msgSend_willChangeProperty_(self, v8, 529, v9);
    objc_msgSend_i_setThumbnailImageData_(self, v10, v12, v11);
  }
}

+ (id)p_defaultStyleWithContext:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v7 = objc_msgSend_documentRoot(v3, v4, v5, v6);

  v11 = objc_msgSend_theme(v7, v8, v9, v10);
  v13 = objc_msgSend_presetOfKind_index_(v11, v12, *MEMORY[0x277D80B68], 0);
  v14 = TSUCheckedDynamicCast();

  return v14;
}

- (TSAObject3DInfo)initWithContext:(id)a3 geometry:(id)a4 objectData:(id)a5 thumbnailImageData:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_class();
  v17 = objc_msgSend_p_defaultStyleWithContext_(v14, v15, v13, v16);
  v19 = objc_msgSend_initWithContext_geometry_style_objectData_thumbnailImageData_(self, v18, v13, v12, v17, v11, v10);

  return v19;
}

- (TSAObject3DInfo)initWithContext:(id)a3 geometry:(id)a4 style:(id)a5 objectData:(id)a6 thumbnailImageData:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = TSAObject3DInfo;
  v16 = [(TSAObject3DInfo *)&v23 initWithContext:a3 geometry:a4];
  v17 = v16;
  if (v16)
  {
    *(&v16->super.super.super.isa + *MEMORY[0x277D80400]) = 1;
    objc_storeStrong(&v16->_objectData, a6);
    objc_msgSend_didAddReferenceToData_(v17, v18, v17->_objectData, v19);
    objc_storeStrong(&v17->_thumbnailImageData, a7);
    objc_msgSend_didAddReferenceToData_(v17, v20, v17->_thumbnailImageData, v21);
    objc_storeStrong(&v17->_style, a5);
  }

  return v17;
}

- (TSAObject3DInfo)initWithContext:(id)a3 geometry:(id)a4 objectData:(id)a5 thumbnailImageData:(id)a6 embeddedAnimations:(BOOL)a7 boundingRect:(CGRect)a8 tracedPath:(id)a9
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v20 = a9;
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = objc_opt_class();
  v28 = objc_msgSend_p_defaultStyleWithContext_(v25, v26, v24, v27);
  v30 = objc_msgSend_initWithContext_geometry_style_objectData_thumbnailImageData_(self, v29, v24, v23, v28, v22, v21);

  if (v30)
  {
    *(v30 + 257) = a7;
    *(v30 + 264) = x;
    *(v30 + 272) = y;
    *(v30 + 280) = width;
    *(v30 + 288) = height;
    objc_storeStrong((v30 + 296), a9);
  }

  return v30;
}

- (BOOL)needsDownload
{
  v5 = objc_msgSend_objectData(self, a2, v2, v3);
  if (objc_msgSend_needsDownload(v5, v6, v7, v8))
  {
    v12 = 1;
  }

  else
  {
    v13 = objc_msgSend_thumbnailImageData(self, v9, v10, v11);
    v12 = objc_msgSend_needsDownload(v13, v14, v15, v16);
  }

  return v12;
}

- (BOOL)canCopyData
{
  v5 = objc_msgSend_objectData(self, a2, v2, v3);
  if (objc_msgSend_p_canCopy_(self, v6, v5, v7))
  {
    v11 = objc_msgSend_thumbnailImageData(self, v8, v9, v10);
    canCopy = objc_msgSend_p_canCopy_(self, v12, v11, v13);
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
  if (objc_msgSend_needsDownload(v3, v4, v5, v6))
  {
    isApplicationData = objc_msgSend_isApplicationData(v3, v7, v8, v9);
  }

  else
  {
    isApplicationData = 1;
  }

  return isApplicationData;
}

- (id)promisedDataForType:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_fileType(self, v5, v6, v7);
  isEqual = objc_msgSend_isEqual_(v4, v9, v8, v10);

  if (isEqual)
  {
    v15 = objc_msgSend_objectData(self, v12, v13, v14);
    v19 = objc_msgSend_NSData(v15, v16, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)setAspectRatioLocked:(BOOL)a3
{
  if (!a3)
  {
    sub_27610CA5C();
  }
}

- (BOOL)isUSDZ
{
  v4 = MEMORY[0x277CE1CB8];
  v5 = objc_msgSend_fileType(self, a2, v2, v3);
  v8 = objc_msgSend_typeWithIdentifier_(v4, v6, v5, v7);
  v11 = objc_msgSend_conformsToType_(v8, v9, *MEMORY[0x277CE1EA0], v10);

  return v11;
}

- (BOOL)readyForQuicklook
{
  if (!objc_msgSend_isUSDZ(self, a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_objectData(self, v5, v6, v7);
  if (objc_msgSend_needsDownload(v8, v9, v10, v11))
  {
    isReadable = 0;
  }

  else
  {
    v16 = objc_msgSend_objectData(self, v12, v13, v14);
    isReadable = objc_msgSend_isReadable(v16, v17, v18, v19);
  }

  return isReadable;
}

- (BOOL)readyToPlayAnimations
{
  if (!objc_msgSend_hasEmbeddedAnimations(self, a2, v2, v3))
  {
    return 0;
  }

  v8 = objc_msgSend_objectData(self, v5, v6, v7);
  if (objc_msgSend_needsDownload(v8, v9, v10, v11))
  {
    isReadable = 0;
  }

  else
  {
    v16 = objc_msgSend_objectData(self, v12, v13, v14);
    isReadable = objc_msgSend_isReadable(v16, v17, v18, v19);
  }

  return isReadable;
}

- (BOOL)canPlayEmbeddedAnimationsInSlideshow
{
  if (!objc_msgSend_hasEmbeddedAnimations(self, a2, v2, v3))
  {
    return 0;
  }

  v5 = TSDTopmostInfoFromInfo();
  v6 = v5 == self;

  return v6;
}

- (id)defaultDescriptiveName
{
  v5 = objc_msgSend_fileDisplayName(self, a2, v2, v3);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TSAObject3DInfo;
    v7 = [(TSAObject3DInfo *)&v10 defaultDescriptiveName];
  }

  v8 = v7;

  return v8;
}

- (CGRect)visibleBounds
{
  v5 = objc_msgSend_geometry(self, a2, v2, v3);
  objc_msgSend_size(v5, v6, v7, v8);
  TSURectWithSize();
  objc_msgSend_boundingRect(self, v9, v10, v11);
  TSURectFromNormalizedSubrect();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)computeInfoGeometryForFittingInFrame:(CGRect)a3
{
  v6 = objc_msgSend_geometry(self, a2, v3, v4);
  objc_msgSend_boundsBeforeRotation(v6, v7, v8, v9);

  objc_msgSend_boundingRect(self, v10, v11, v12);
  TSURectFromNormalizedSubrect();
  TSUFitOrFillSizeInRect();
  TSUCenterOfRect();
  TSUScaleRectAroundPoint();
  v14 = v13;
  v16 = v15;
  TSUCenterOfRect();
  TSUSubtractPoints();
  TSUAddPoints();
  v18 = v17;
  v20 = v19;
  v21 = objc_alloc(MEMORY[0x277D802E8]);
  v25 = objc_msgSend_initWithPosition_size_(v21, v22, v23, v24, v18, v20, v14, v16);

  return v25;
}

- (void)takeGeometryFromReplaced3DLayout:(id)a3 info:(id)a4
{
  v68 = a3;
  if (v68)
  {
    v6 = MEMORY[0x277D80358];
    v7 = a4;
    v8 = objc_alloc_init(v6);
    v12 = objc_msgSend_pureGeometryInRoot(v68, v9, v10, v11);
    v16 = objc_msgSend_geometry(v7, v13, v14, v15);

    objc_msgSend_center(v16, v17, v18, v19);
    v21 = v20;
    v23 = v22;
    v27 = objc_msgSend_geometry(self, v24, v25, v26);
    objc_msgSend_size(v27, v28, v29, v30);
    v32 = v31;
    v34 = v33;

    objc_msgSend_size(v12, v35, v36, v37);
    v39 = v38;
    objc_msgSend_size(v12, v40, v41, v42);
    v47 = objc_msgSend_computeInfoGeometryForFittingInFrame_(self, v43, v44, v45, 0.0, 0.0, v39, v46);
    objc_msgSend_size(v47, v48, v49, v50);
    v52 = v51;
    v54 = v53;

    v58 = v52 == *MEMORY[0x277CBF3A8];
    v59 = v54 == *(MEMORY[0x277CBF3A8] + 8);
    if (v58 && v59)
    {
      v60 = v32;
    }

    else
    {
      v60 = v52;
    }

    if (v58 && v59)
    {
      objc_msgSend_setSize_(v8, v55, v56, v57, v60, v34);
    }

    else
    {
      objc_msgSend_setSize_(v8, v55, v56, v57, v60, v54);
    }

    objc_msgSend_setCenter_(v8, v61, v62, v63, v21, v23);
    objc_msgSend_setGeometry_(self, v64, v8, v65);
  }

  else
  {
    v8 = a4;
    objc_msgSend_takeGeometryFromReplaced3DInfo_(self, v66, v8, v67);
  }
}

- (void)takeGeometryFromReplaced3DInfo:(id)a3
{
  v5 = objc_msgSend_geometry(a3, a2, a3, v3);
  v46 = objc_msgSend_mutableCopy(v5, v6, v7, v8);

  objc_msgSend_center(v46, v9, v10, v11);
  v13 = v12;
  v15 = v14;
  v19 = objc_msgSend_geometry(self, v16, v17, v18);
  objc_msgSend_size(v19, v20, v21, v22);
  objc_msgSend_size(v46, v23, v24, v25);
  TSUFitOrFillSizeInSize();
  v27 = v26;
  v29 = v28;

  if (v27 == *MEMORY[0x277CBF3A8] && v29 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v37 = objc_msgSend_geometry(self, v30, v31, v32);
    objc_msgSend_size(v37, v38, v39, v40);
    objc_msgSend_setSize_(v46, v41, v42, v43);
  }

  else
  {
    objc_msgSend_setSize_(v46, v30, v31, v32, v27, v29);
  }

  objc_msgSend_setCenter_(v46, v34, v35, v36, v13, v15);
  objc_msgSend_setGeometry_(self, v44, v46, v45);
}

- (void)takePropertiesFromReplaced3DInfo:(id)a3
{
  v91 = a3;
  v7 = objc_msgSend_context(self, v4, v5, v6);
  v11 = objc_msgSend_style(v91, v8, v9, v10);
  objc_msgSend_setStyle_(self, v12, v11, v13);

  if (objc_msgSend_supportsAttachedComments(self, v14, v15, v16))
  {
    v20 = objc_msgSend_comment(v91, v17, v18, v19);

    if (v20)
    {
      v21 = objc_msgSend_comment(v91, v17, v18, v19);
      v25 = objc_msgSend_storage(v21, v22, v23, v24);

      v26 = objc_alloc(MEMORY[0x277D80200]);
      v30 = objc_msgSend_text(v25, v27, v28, v29);
      v34 = objc_msgSend_creationDate(v25, v31, v32, v33);
      v38 = objc_msgSend_author(v25, v35, v36, v37);
      v42 = objc_msgSend_replies(v25, v39, v40, v41);
      v44 = objc_msgSend_initWithContext_text_creationDate_author_replies_(v26, v43, v7, v30, v34, v38, v42);

      v45 = objc_alloc(MEMORY[0x277D80218]);
      v47 = objc_msgSend_initWithParent_storage_(v45, v46, self, v44);
      objc_msgSend_setComment_(self, v48, v47, v49);
    }
  }

  v50 = objc_msgSend_exteriorTextWrap(v91, v17, v18, v19);
  objc_msgSend_setExteriorTextWrap_(self, v51, v50, v52);

  v56 = objc_msgSend_hyperlinkURL(v91, v53, v54, v55);
  objc_msgSend_setHyperlinkURL_(self, v57, v56, v58);

  if (objc_msgSend_allowsTitle(self, v59, v60, v61))
  {
    v65 = objc_msgSend_titleInfoIgnoringVisibility(v91, v62, v63, v64);
    v69 = objc_msgSend_replicateForReinsertion(v65, v66, v67, v68);
    objc_msgSend_setTitle_(self, v70, v69, v71);
  }

  v72 = objc_msgSend_titleHidden(v91, v62, v63, v64);
  objc_msgSend_setTitleHidden_(self, v73, v72, v74);
  if (objc_msgSend_allowsCaption(self, v75, v76, v77))
  {
    v81 = objc_msgSend_captionInfoIgnoringVisibility(v91, v78, v79, v80);
    v85 = objc_msgSend_replicateForReinsertion(v81, v82, v83, v84);
    objc_msgSend_setCaption_(self, v86, v85, v87);
  }

  v88 = objc_msgSend_captionHidden(v91, v78, v79, v80);
  objc_msgSend_setCaptionHidden_(self, v89, v88, v90);
}

- (float)opacity
{
  v5 = objc_msgSend_style(self, a2, v2, v3);

  if (!v5)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSAObject3DInfo opacity]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 330, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = objc_msgSend_style(self, v6, v7, v8);
  objc_msgSend_floatValueForProperty_(v18, v19, 518, v20);
  v22 = v21;

  return v22;
}

- (void)setOpacity:(float)a3
{
  v73 = a3;
  v6 = objc_msgSend_style(self, a2, v3, v4);

  if (!v6)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSAObject3DInfo setOpacity:]", v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 336, 0, "invalid nil value for '%{public}s'", "self.style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = objc_msgSend_documentRoot(self, v7, v8, v9);
  v23 = objc_msgSend_stylesheet(v19, v20, v21, v22);

  if (!v23)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSAObject3DInfo setOpacity:]", v26);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 337, 0, "invalid nil value for '%{public}s'", "self.documentRoot.stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
  }

  v36 = objc_msgSend_styleClass(self, v24, v25, v26);
  objc_msgSend_validateFloatValue_forProperty_(v36, v37, &v73, 518);
  objc_msgSend_willChangeProperty_(self, v38, 518, v39);
  v40 = objc_alloc(MEMORY[0x277D80AB8]);
  v43 = objc_msgSend_initWithPropertiesAndValues_(v40, v41, 518, v42, v73, 0, 0);
  v47 = objc_msgSend_documentRoot(self, v44, v45, v46);
  v51 = objc_msgSend_stylesheet(v47, v48, v49, v50);
  v55 = objc_msgSend_style(self, v52, v53, v54);
  v57 = objc_msgSend_variationOfStyle_propertyMap_(v51, v56, v55, v43);

  v61 = objc_msgSend_style(self, v58, v59, v60);
  objc_opt_class();
  LOBYTE(v51) = objc_opt_isKindOfClass();

  if ((v51 & 1) == 0)
  {
    v64 = MEMORY[0x277D81150];
    v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "[TSAObject3DInfo setOpacity:]", v63);
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v67);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v64, v69, v65, v68, 344, 0, "Variation style is wrong style.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v71, v72);
  }

  objc_msgSend_setStyle_(self, v62, v57, v63);
}

- (id)typesToPromiseWhenCopyingSingleDrawable
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_supported3DObjectFileTypes(MEMORY[0x277D81200], a2, v2, v3);
  v9 = objc_msgSend_fileType(self, v6, v7, v8);
  v12 = objc_msgSend_containsObject_(v5, v10, v9, v11);

  if (v12)
  {
    v16 = objc_msgSend_fileType(self, v13, v14, v15);
    v20[0] = v16;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v20, 1);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_msgSend_pushMappingContext_(v6, v8, self, v9);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2760AE630;
  v16[3] = &unk_27A6B01D0;
  v17 = v6;
  v10 = v6;
  objc_msgSend_replaceReferencedStylesUsingBlock_(self, v11, v16, v12);
  v15.receiver = self;
  v15.super_class = TSAObject3DInfo;
  [(TSAObject3DInfo *)&v15 adoptStylesheet:v7 withMapper:v10];

  objc_msgSend_popMappingContext_(v10, v13, self, v14);
}

- (void)setStyle:(id)a3
{
  if (self->_style != a3)
  {
    v4 = a3;
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_opt_class();
    v8 = TSUCheckedDynamicCast();

    style = self->_style;
    self->_style = v8;
  }
}

- (id)pastedPropertyMapForStyle:(id)a3 tailLineEndInfo:(int)a4
{
  v4 = MEMORY[0x277D81150];
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v9 = objc_msgSend_stringWithUTF8String_(v5, v7, "[TSAObject3DInfo pastedPropertyMapForStyle:tailLineEndInfo:]", v8);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v11);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v13, v9, v12, 405, 0, "Styles should not be pasted on 3D objects.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  v20 = objc_msgSend_fullPropertyMap(v6, v17, v18, v19);

  v24 = objc_msgSend_copy(v20, v21, v22, v23);

  return v24;
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v4 = (*(a3 + 2))(a3, self->_style);
  v16 = v4;
  if (v4)
  {
    objc_msgSend_setStyle_(self, v4, v4, v6);
  }

  else
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSAObject3DInfo replaceReferencedStylesUsingBlock:]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 421, 0, "Failed to map style %{public}@", self->_style);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
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
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSAObject3DInfo mixingTypeWithObject:context:]", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 438, 0, "nil object after cast");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  v21 = objc_msgSend_objectData(self, v9, v10, v11);

  if (v21)
  {
    v25 = objc_msgSend_objectData(v8, v22, v23, v24);
    objc_msgSend_objectData(self, v26, v27, v28);
  }

  v29 = objc_msgSend_geometry(self, v22, v23, v24);
  v33 = objc_msgSend_geometry(v8, v30, v31, v32);
  objc_msgSend_mixingTypeWithObject_context_(v29, v34, v33, v6);

  v35 = TSDMixingTypeBestFromMixingTypes();
  objc_msgSend_pose3D(self, v36, v37, v38);
  v54 = v39;
  objc_msgSend_pose3D(v8, v40, v41, v42);
  if (v35 == 5)
  {
    v47 = COERCE_DOUBLE(vmovn_s32(vceqq_f32(v54, v46)));
    if (((LOBYTE(v47) & 1) != 0 || (v47 = vabdd_f64(v54.f32[0], v46.f32[0]), v47 < fabs(v46.f32[0] * 0.000000999999997))) && (v54.f32[1] == v46.f32[1] || (v47 = vabdd_f64(v54.f32[1], v46.f32[1]), v47 < fabs(v46.f32[1] * 0.000000999999997))) && ((LODWORD(v47) = v54.i32[2], v46.i32[0] = v46.i32[2], v54.f32[2] == v46.f32[2]) || (v47 = v54.f32[2], *v46.i64 = vabdd_f64(v54.f32[2], v46.f32[2]), *v46.i64 < fabs(v46.f32[2] * 0.000000999999997))) && (v48 = objc_msgSend_playsAnimations(self, v43, v44, v45, *v46.i64, v47), v48 == objc_msgSend_playsAnimations(v8, v49, v50, v51)))
    {
      v52 = 5;
    }

    else
    {
      v52 = 4;
    }
  }

  else if (v35 == 3)
  {
    v52 = 2;
  }

  else
  {
    v52 = v35;
  }

  return v52;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 >= 1.0)
  {
    self = v6;
  }

  v8 = self;

  return self;
}

- (void)didInitFromSOS
{
  v31.receiver = self;
  v31.super_class = TSAObject3DInfo;
  [(TSAObject3DInfo *)&v31 didInitFromSOS];
  if (!self->_thumbnailImageData)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSAObject3DInfo didInitFromSOS]", v4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 492, 0, "invalid nil value for '%{public}s'", "_thumbnailImageData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    if (!self->_thumbnailImageData)
    {
      v15 = objc_msgSend_null(MEMORY[0x277D80828], v3, v14, v4);
      thumbnailImageData = self->_thumbnailImageData;
      self->_thumbnailImageData = v15;
    }
  }

  if (!self->_objectData)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSAObject3DInfo didInitFromSOS]", v4);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 497, 0, "invalid nil value for '%{public}s'", "_objectData");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    if (!self->_objectData)
    {
      v29 = objc_msgSend_null(MEMORY[0x277D80828], v26, v27, v28);
      objectData = self->_objectData;
      self->_objectData = v29;
    }
  }
}

- (NSString)fileDisplayName
{
  v4 = objc_msgSend_objectData(self, a2, v2, v3);
  v8 = objc_msgSend_filename(v4, v5, v6, v7);

  return v8;
}

- (NSString)fileType
{
  v4 = objc_msgSend_objectData(self, a2, v2, v3);
  v8 = objc_msgSend_type(v4, v5, v6, v7);

  return v8;
}

- (void)scaleDownSizeToFitWithinSize:(CGSize)a3
{
  if (objc_msgSend_tsp_isInDocument(self, a2, v3, v4))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSAObject3DInfo scaleDownSizeToFitWithinSize:]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 521, 0, "Cannot mutate an object that is in the document!");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = objc_msgSend_parentInfo(self, v6, v7, v8);

  if (v18)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSAObject3DInfo scaleDownSizeToFitWithinSize:]", v20);
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v26, v22, v25, 522, 0, "Should not scale down size on media info with a parent!");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v27, v28, v29);
  }

  TSURectWithSize();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v41 = objc_msgSend_geometry(self, v38, v39, v40);
  objc_msgSend_size(v41, v42, v43, v44);
  TSURectWithSize();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v64.origin.x = v31;
  v64.origin.y = v33;
  v64.size.width = v35;
  v64.size.height = v37;
  v65.origin.x = v46;
  v65.origin.y = v48;
  v65.size.width = v50;
  v65.size.height = v52;
  v53 = CGRectContainsRect(v64, v65);
  if (v53)
  {
    v57 = v46;
  }

  else
  {
    v57 = v31;
  }

  if (v53)
  {
    v58 = v48;
  }

  else
  {
    v58 = v33;
  }

  if (v53)
  {
    v59 = v50;
  }

  else
  {
    v59 = v35;
  }

  if (v53)
  {
    objc_msgSend_computeInfoGeometryForFittingInFrame_(self, v54, v55, v56, v57, v58, v59, v52);
  }

  else
  {
    objc_msgSend_computeInfoGeometryForFittingInFrame_(self, v54, v55, v56, v57, v58, v59, v37);
  }
  v62 = ;
  objc_msgSend_setGeometry_(self, v60, v62, v61);
}

- (id)infoGeometryForVisiblePositioningInfoGeometry:(id)a3
{
  objc_msgSend_transformedBounds(a3, a2, a3, v3);

  return objc_msgSend_computeInfoGeometryForFittingInFrame_(self, v5, v6, v7);
}

- (CGRect)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)loadFromUnarchiver:(id)a3
{
  v9 = a3;
  v4 = MEMORY[0x277D80558];
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(v9, v5, *(*(v4 + 88) + 720), v6);

  objc_msgSend_loadFromArchive_unarchiver_(self, v8, v7, v9);
}

- (void)saveToArchiver:(id)a3
{
  v8 = a3;
  v4 = MEMORY[0x277D80558];
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(v8, v5, sub_2760B8C04, *(*(v4 + 88) + 720));

  objc_msgSend_saveToArchive_archiver_(self, v7, v6, v8);
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  if (*(a3 + 8))
  {
    v7 = *(a3 + 8);
  }

  else
  {
    v7 = MEMORY[0x277D804B0];
  }

  v131.receiver = self;
  v131.super_class = TSAObject3DInfo;
  [(TSAObject3DInfo *)&v131 loadFromArchive:v7 unarchiver:v6];
  Message = google::protobuf::internal::ExtensionSet::GetMessage();
  v11 = Message;
  if (*(Message + 16))
  {
    objc_msgSend_readDataReferenceMessage_(v6, v9, *(Message + 24), v10);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSAObject3DInfo(PersistenceAdditions) loadFromArchive:unarchiver:]", v10);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfoPersistenceAdditions.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 76, 0, "Missing 3D object data");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    objc_msgSend_null(MEMORY[0x277D80828], v21, v22, v23);
  }
  v24 = ;
  objectData = self->_objectData;
  self->_objectData = v24;

  v29 = *(v11 + 16);
  if ((v29 & 2) != 0)
  {
    TSPSimdFloat3FromPose3DMessage();
    objc_msgSend_setPose3D_(self, v30, v31, v32);
    v29 = *(v11 + 16);
  }

  if ((v29 & 4) != 0)
  {
    TSPCGRectFromMessage(*(v11 + 40));
    objc_msgSend_setBoundingRect_(self, v36, v37, v38);
  }

  else
  {
    objc_msgSend_setBoundingRect_(self, v26, v27, v28, *MEMORY[0x277D814E0], *(MEMORY[0x277D814E0] + 8), *(MEMORY[0x277D814E0] + 16), *(MEMORY[0x277D814E0] + 24));
  }

  if ((*(v11 + 16) & 0x10) != 0)
  {
    v48 = TSPCGPathCreateFromMessage();
    v51 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v49, v48, v50);
    objc_msgSend_setTracedPath_(self, v52, v51, v53);

    CGPathRelease(v48);
  }

  else
  {
    v39 = MEMORY[0x277D81160];
    objc_msgSend_boundingRect(self, v33, v34, v35);
    v43 = objc_msgSend_bezierPathWithRect_(v39, v40, v41, v42);
    objc_msgSend_setTracedPath_(self, v44, v43, v45);
  }

  v54 = *(v11 + 16);
  if ((v54 & 0x20) != 0)
  {
    self->_playsAnimations = *(v11 + 64);
  }

  if ((v54 & 0x40) != 0)
  {
    self->_hasEmbeddedAnimations = *(v11 + 65);
  }

  if ((*(a3 + 40) & 0x80) != 0)
  {
    objc_msgSend_readDataReferenceMessage_(v6, v46, *(a3 + 13), v47);
  }

  else
  {
    v55 = MEMORY[0x277D81150];
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSAObject3DInfo(PersistenceAdditions) loadFromArchive:unarchiver:]", v47);
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfoPersistenceAdditions.mm", v58);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v60, v56, v59, 115, 0, "Missing thumbnail image data");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63);
    objc_msgSend_null(MEMORY[0x277D80828], v64, v65, v66);
  }
  v67 = ;
  thumbnailImageData = self->_thumbnailImageData;
  self->_thumbnailImageData = v67;

  v69 = *(a3 + 15);
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = sub_2760B858C;
  v130[3] = &unk_27A6AF6A0;
  v130[4] = self;
  v70 = v6;
  v72 = objc_opt_class();
  if (v69)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v70, v71, v69, v72, 0, v130);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v70, v71, MEMORY[0x277D80A18], v72, 0, v130);
  }

  v76 = objc_msgSend_fileFormatVersion(v70, v73, v74, v75);
  if (v76 < sub_2760BE930())
  {
    v80 = objc_msgSend_geometry(self, v77, v78, v79);
    objc_msgSend_angle(v80, v81, v82, v83);
    v85 = v84;
    v86 = v84 != 0.0;

    v90 = objc_msgSend_geometry(self, v87, v88, v89);
    objc_msgSend_size(v90, v91, v92, v93);
    v95 = v94;
    v99 = objc_msgSend_geometry(self, v96, v97, v98);
    objc_msgSend_size(v99, v100, v101, v102);
    v104 = vabdd_f64(v95, v103) >= 1.0 && v95 != v103;

    v108 = objc_msgSend_geometry(self, v105, v106, v107);
    v112 = objc_msgSend_horizontalFlip(v108, v109, v110, v111);

    v116 = objc_msgSend_geometry(self, v113, v114, v115);
    v120 = objc_msgSend_verticalFlip(v116, v117, v118, v119);

    if (v85 != 0.0 || v104 || ((v112 | v120) & 1) != 0 || (objc_msgSend_aspectRatioLocked(self, v121, v122, v123) & 1) == 0)
    {
      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = sub_2760B85A4;
      v124[3] = &unk_27A6B0390;
      v124[4] = self;
      v125 = v86;
      v126 = v104;
      v127 = (v112 | v120) & 1;
      v128 = v112;
      v129 = v120;
      objc_msgSend_addFinalizeHandler_(v70, v121, v124, v123);
    }
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = sub_2760B8B7C;
  v64[3] = &unk_27A6AF6C8;
  v67 = a3;
  v7 = v6;
  v65 = v7;
  v66 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, v64);
  v10 = objc_msgSend_setIgnoreAndPreserveRuleForField_message_(v7, v9, 200, a3);
  TSA::Object3DInfo::default_instance(v10);
  v11 = google::protobuf::internal::ExtensionSet::MutableMessage();
  v16 = objc_msgSend_objectData(self, v12, v13, v14);
  *(v11 + 16) |= 1u;
  v17 = *(v11 + 24);
  if (!v17)
  {
    v18 = *(v11 + 8);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    v17 = MEMORY[0x277C95130](v18);
    *(v11 + 24) = v17;
  }

  objc_msgSend_setDataReference_message_(v7, v15, v16, v17);

  *(v11 + 16) |= 2u;
  if (!*(v11 + 32))
  {
    v22 = *(v11 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(v11 + 32) = MEMORY[0x277C95190](v22);
  }

  objc_msgSend_pose3D(self, v19, v20, v21);
  TSPSimdFloat3CopyToPose3DMessage();
  objc_msgSend_boundingRect(self, v23, v24, v25);
  if (!CGRectIsNull(v70))
  {
    objc_msgSend_boundingRect(self, v26, v27, v28);
    if (!CGRectIsEmpty(v71))
    {
      objc_msgSend_boundingRect(self, v26, v27, v28);
      if (!CGRectIsInfinite(v72))
      {
        *(v11 + 16) |= 4u;
        v29 = *(v11 + 40);
        if (!v29)
        {
          v30 = *(v11 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v29 = MEMORY[0x277C95150](v30);
          *(v11 + 40) = v29;
        }

        objc_msgSend_boundingRect(self, v26, v27, v28);
        TSPCGRectCopyToMessage(v73, v29);
      }
    }
  }

  tracedPath = self->_tracedPath;
  if (tracedPath && objc_msgSend_elementCount(tracedPath, v26, v27, v28) >= 1)
  {
    *(v11 + 16) |= 0x10u;
    if (!*(v11 + 56))
    {
      v32 = *(v11 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v11 + 56) = MEMORY[0x277C95140](v32);
    }

    objc_msgSend_CGPath(self->_tracedPath, v26, v27, v28);
    TSPCGPathCopyToMessage();
  }

  v33 = objc_msgSend_playsAnimations(self, v26, v27, v28);
  *(v11 + 16) |= 0x20u;
  *(v11 + 64) = v33;
  hasEmbeddedAnimations = objc_msgSend_hasEmbeddedAnimations(self, v34, v35, v36);
  *(v11 + 16) |= 0x40u;
  *(v11 + 65) = hasEmbeddedAnimations;
  v41 = objc_msgSend_thumbnailImageData(self, v38, v39, v40);

  if (v41)
  {
    v46 = objc_msgSend_thumbnailImageData(self, v42, v43, v44);
    *(a3 + 10) |= 0x80u;
    v47 = *(a3 + 13);
    if (!v47)
    {
      v48 = *(a3 + 1);
      if (v48)
      {
        v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
      }

      v47 = MEMORY[0x277C95130](v48);
      *(a3 + 13) = v47;
    }

    objc_msgSend_setDataReference_message_(v7, v45, v46, v47);
  }

  style = self->_style;
  *(a3 + 10) |= 0x200u;
  v50 = *(a3 + 15);
  if (!v50)
  {
    v51 = *(a3 + 1);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x277C951B0](v51);
    *(a3 + 15) = v50;
  }

  objc_msgSend_setStrongReference_message_(v7, v42, style, v50);
  v52 = MEMORY[0x277CBF3A8];
  v53 = *MEMORY[0x277CBF3A8];
  v54 = *(MEMORY[0x277CBF3A8] + 8);
  *(a3 + 10) |= 0x400u;
  v55 = *(a3 + 16);
  if (!v55)
  {
    v56 = *(a3 + 1);
    if (v56)
    {
      v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
    }

    v55 = MEMORY[0x277C95160](v56);
    *(a3 + 16) = v55;
  }

  v68.width = v53;
  v68.height = v54;
  TSPCGSizeCopyToMessage(v68, v55);
  v57 = *v52;
  v58 = v52[1];
  *(a3 + 10) |= 0x800u;
  v59 = *(a3 + 17);
  if (!v59)
  {
    v60 = *(a3 + 1);
    if (v60)
    {
      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
    }

    v59 = MEMORY[0x277C95160](v60);
    *(a3 + 17) = v59;
  }

  v69.width = v57;
  v69.height = v58;
  TSPCGSizeCopyToMessage(v69, v59);
  v61 = sub_2760BE920();
  v62 = sub_2760BE930();
  objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v7, v63, v61, v62, @"TSAObject3D");
}

@end