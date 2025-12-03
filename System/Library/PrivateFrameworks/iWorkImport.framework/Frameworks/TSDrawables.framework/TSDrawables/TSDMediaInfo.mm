@interface TSDMediaInfo
- (BOOL)canResetMediaSize;
- (CGPoint)centerForReplacingWithNewMedia;
- (CGSize)defaultOriginalSize;
- (CGSize)originalSize;
- (CGSize)rawDataSize;
- (CGSize)rawOriginalSize;
- (NSString)fileDisplayName;
- (NSString)fileType;
- (TSDMediaInfo)initWithContext:(id)context geometry:(id)geometry;
- (TSPData)fileDataForDragging;
- (id)copyToInstantiateTemplatePlaceholder;
- (id)defaultDescriptiveName;
- (void)scaleDownSizeToFitWithinSize:(CGSize)size;
- (void)setAttribution:(id)attribution;
- (void)setFlagsWithPlaceholder:(BOOL)placeholder wasMediaReplaced:(BOOL)replaced;
- (void)setGeometry:(id)geometry;
- (void)setOriginalSize:(CGSize)size;
- (void)takePropertiesFromReplacedMediaInfo:(id)info;
- (void)updateGeometryToReplaceMediaInfo:(id)info;
@end

@implementation TSDMediaInfo

- (void)setAttribution:(id)attribution
{
  attributionCopy = attribution;
  if (self->_attribution != attributionCopy)
  {
    v10 = attributionCopy;
    objc_msgSend_willModify(self, v5, v6);
    v9 = objc_msgSend_copy(v10, v7, v8);

    objc_storeStrong(&self->_attribution, v9);
    attributionCopy = v9;
  }
}

- (TSDMediaInfo)initWithContext:(id)context geometry:(id)geometry
{
  v10.receiver = self;
  v10.super_class = TSDMediaInfo;
  v4 = [(TSDDrawableInfo *)&v10 initWithContext:context geometry:geometry];
  v5 = v4;
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2766F9AC4;
    v8[3] = &unk_27A6CC658;
    v9 = v4;
    objc_msgSend_performBlockIgnoringModifications_(v9, v6, v8);
  }

  return v5;
}

- (id)copyToInstantiateTemplatePlaceholder
{
  v5.receiver = self;
  v5.super_class = TSDMediaInfo;
  copyToInstantiateTemplatePlaceholder = [(TSDDrawableInfo *)&v5 copyToInstantiateTemplatePlaceholder];
  objc_msgSend_setWasMediaReplaced_(copyToInstantiateTemplatePlaceholder, v3, 0);
  return copyToInstantiateTemplatePlaceholder;
}

- (void)setOriginalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_originalSize = &self->_originalSize;
  if (self->_originalSize.width != size.width || self->_originalSize.height != size.height)
  {
    objc_msgSend_willModify(self, a2, v3);
    p_originalSize->width = width;
    p_originalSize->height = height;
  }
}

- (CGSize)defaultOriginalSize
{
  v3 = objc_msgSend_geometry(self, a2, v2);
  objc_msgSend_size(v3, v4, v5);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)setFlagsWithPlaceholder:(BOOL)placeholder wasMediaReplaced:(BOOL)replaced
{
  replacedCopy = replaced;
  objc_msgSend_willChangeProperty_(self, a2, 528);
  objc_msgSend_willModify(self, v7, v8);
  if (replacedCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  *&self->_flags = v9 | placeholder | *&self->_flags & 0xFC;
}

- (void)setGeometry:(id)geometry
{
  v13.receiver = self;
  v13.super_class = TSDMediaInfo;
  geometryCopy = geometry;
  [(TSDDrawableInfo *)&v13 setGeometry:geometryCopy];
  objc_msgSend_size(geometryCopy, v5, v6, v13.receiver, v13.super_class);
  v8 = v7;
  v10 = v9;

  objc_msgSend_setOriginalSize_(self, v11, v12, v8, v10);
}

- (CGSize)rawDataSize
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMediaInfo rawDataSize]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaInfo.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 139, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDMediaInfo rawDataSize]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (CGSize)rawOriginalSize
{
  width = self->_originalSize.width;
  height = self->_originalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)canResetMediaSize
{
  if (objc_msgSend_isLocked(self, a2, v2))
  {
    return 0;
  }

  objc_msgSend_rawDataSize(self, v4, v5);
  return *(MEMORY[0x277CBF3A8] + 8) != v8 || *MEMORY[0x277CBF3A8] != v7;
}

- (id)defaultDescriptiveName
{
  v4 = objc_msgSend_fileDisplayName(self, a2, v2);
  v5 = v4;
  if (v4)
  {
    defaultDescriptiveName = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSDMediaInfo;
    defaultDescriptiveName = [(TSDDrawableInfo *)&v9 defaultDescriptiveName];
  }

  v7 = defaultDescriptiveName;

  return v7;
}

- (void)takePropertiesFromReplacedMediaInfo:(id)info
{
  infoCopy = info;
  objc_msgSend_takePropertiesFromReplacedDrawableInfo_(self, v5, infoCopy);
  objc_msgSend_updateGeometryToReplaceMediaInfo_(self, v6, infoCopy);
  objc_msgSend_originalSize(infoCopy, v7, v8);
  objc_msgSend_setOriginalSize_(self, v9, v10);
  isPlaceholder = objc_msgSend_isPlaceholder(infoCopy, v11, v12);
  objc_msgSend_setIsPlaceholder_(self, v14, isPlaceholder);
  objc_msgSend_setWasMediaReplaced_(self, v15, 1);
  v19 = objc_msgSend_style(infoCopy, v16, v17);

  objc_msgSend_setStyle_(self, v18, v19);
}

- (void)updateGeometryToReplaceMediaInfo:(id)info
{
  infoCopy = info;
  v7 = objc_msgSend_geometry(infoCopy, v5, v6);
  v38 = objc_msgSend_mutableCopy(v7, v8, v9);

  objc_msgSend_centerForReplacingWithNewMedia(infoCopy, v10, v11);
  v13 = v12;
  v15 = v14;
  v18 = objc_msgSend_geometry(self, v16, v17);
  objc_msgSend_size(v18, v19, v20);
  objc_msgSend_originalSize(infoCopy, v21, v22);

  TSUFitOrFillSizeInSize();
  v24 = v23;
  v26 = v25;

  if (v24 == *MEMORY[0x277CBF3A8] && v26 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v32 = objc_msgSend_geometry(self, v27, v28);
    objc_msgSend_size(v32, v33, v34);
    objc_msgSend_setSize_(v38, v35, v36);
  }

  else
  {
    objc_msgSend_setSize_(v38, v27, v28, v24, v26);
  }

  objc_msgSend_setCenter_(v38, v30, v31, v13, v15);
  objc_msgSend_setGeometry_(self, v37, v38);
}

- (CGPoint)centerForReplacingWithNewMedia
{
  v3 = objc_msgSend_geometry(self, a2, v2);
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
  if (objc_msgSend_tsp_isInDocument(self, a2, v3))
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSDMediaInfo scaleDownSizeToFitWithinSize:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 208, 0, "Cannot mutate an object that is in the document!");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_parentInfo(self, v5, v6);

  if (v14)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSDMediaInfo scaleDownSizeToFitWithinSize:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 209, 0, "Should not scale down size on media info with a parent!");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v22, v23);
  }

  v41 = objc_msgSend_geometry(self, v15, v16);
  objc_msgSend_size(v41, v24, v25);
  v27 = v26;
  v29 = v28;
  TSUShrinkSizeToFitInSize();
  if (v32 < v27 || v33 < v29)
  {
    v35 = v32;
    v36 = v33;
    v37 = objc_msgSend_mutableCopy(v41, v30, v31);
    objc_msgSend_setSize_(v37, v38, v39, v35, v36);
    objc_msgSend_setGeometry_(self, v40, v37);
  }
}

- (NSString)fileDisplayName
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMediaInfo fileDisplayName]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaInfo.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 259, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDMediaInfo fileDisplayName]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (NSString)fileType
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMediaInfo fileType]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaInfo.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 265, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDMediaInfo fileType]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (TSPData)fileDataForDragging
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDMediaInfo fileDataForDragging]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMediaInfo.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 271, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TSDMediaInfo fileDataForDragging]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (CGSize)originalSize
{
  width = self->_originalSize.width;
  height = self->_originalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end