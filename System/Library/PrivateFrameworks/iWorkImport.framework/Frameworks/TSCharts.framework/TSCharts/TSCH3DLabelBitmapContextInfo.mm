@interface TSCH3DLabelBitmapContextInfo
+ (TSCH3DLabelBitmapContextInfo)contextInfoWithIsPrinting:(BOOL)printing isPDF:(BOOL)f hasSuppressedBackgrounds:(BOOL)backgrounds;
+ (id)contextInfoForScene:(id)scene;
+ (void)setIsPrinting:(BOOL)printing isPDF:(BOOL)f hasSuppressedBackgrounds:(BOOL)backgrounds forScene:(id)scene;
- (BOOL)isEqual:(id)equal;
- (TSCH3DLabelBitmapContextInfo)initWithIsPrinting:(BOOL)printing isPDF:(BOOL)f hasSuppressedBackgrounds:(BOOL)backgrounds;
- (unint64_t)hash;
@end

@implementation TSCH3DLabelBitmapContextInfo

+ (id)contextInfoForScene:(id)scene
{
  sceneCopy = scene;
  v10 = objc_msgSend_propertiesForType_(sceneCopy, v5, v6, v7, v8, self);
  if (!v10)
  {
    v10 = objc_msgSend_context(self, v9, v11, v12, v13);
    objc_msgSend_setProperties_forType_(sceneCopy, v14, v15, v16, v17, v10, self);
  }

  return v10;
}

+ (void)setIsPrinting:(BOOL)printing isPDF:(BOOL)f hasSuppressedBackgrounds:(BOOL)backgrounds forScene:(id)scene
{
  backgroundsCopy = backgrounds;
  fCopy = f;
  printingCopy = printing;
  sceneCopy = scene;
  if (!sceneCopy)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "+[TSCH3DLabelBitmapContextInfo setIsPrinting:isPDF:hasSuppressedBackgrounds:forScene:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelBitmapContextInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 42, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_contextInfoWithIsPrinting_isPDF_hasSuppressedBackgrounds_(self, v10, v11, v12, v13, printingCopy, fCopy, backgroundsCopy);
  objc_msgSend_setProperties_forType_(sceneCopy, v30, v31, v32, v33, v29, self);
}

+ (TSCH3DLabelBitmapContextInfo)contextInfoWithIsPrinting:(BOOL)printing isPDF:(BOOL)f hasSuppressedBackgrounds:(BOOL)backgrounds
{
  backgroundsCopy = backgrounds;
  fCopy = f;
  printingCopy = printing;
  v8 = [self alloc];
  hasSuppressedBackgrounds = objc_msgSend_initWithIsPrinting_isPDF_hasSuppressedBackgrounds_(v8, v9, v10, v11, v12, printingCopy, fCopy, backgroundsCopy);

  return hasSuppressedBackgrounds;
}

- (TSCH3DLabelBitmapContextInfo)initWithIsPrinting:(BOOL)printing isPDF:(BOOL)f hasSuppressedBackgrounds:(BOOL)backgrounds
{
  v9.receiver = self;
  v9.super_class = TSCH3DLabelBitmapContextInfo;
  result = [(TSCH3DLabelBitmapContextInfo *)&v9 init];
  if (result)
  {
    result->_isPrinting = printing;
    result->_isPDF = f;
    result->_hasSuppressedBackgrounds = backgrounds;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = TSUSpecificCast();
    v6 = v5 && self->_isPrinting == v5[8] && self->_isPDF == v5[9] && self->_hasSuppressedBackgrounds == v5[10];
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return objc_msgSend_hash(v2, v3, v4, v5, v6);
}

@end