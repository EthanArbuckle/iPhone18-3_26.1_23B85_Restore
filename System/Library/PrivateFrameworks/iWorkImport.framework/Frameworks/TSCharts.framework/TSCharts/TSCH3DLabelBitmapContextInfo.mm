@interface TSCH3DLabelBitmapContextInfo
+ (TSCH3DLabelBitmapContextInfo)contextInfoWithIsPrinting:(BOOL)a3 isPDF:(BOOL)a4 hasSuppressedBackgrounds:(BOOL)a5;
+ (id)contextInfoForScene:(id)a3;
+ (void)setIsPrinting:(BOOL)a3 isPDF:(BOOL)a4 hasSuppressedBackgrounds:(BOOL)a5 forScene:(id)a6;
- (BOOL)isEqual:(id)a3;
- (TSCH3DLabelBitmapContextInfo)initWithIsPrinting:(BOOL)a3 isPDF:(BOOL)a4 hasSuppressedBackgrounds:(BOOL)a5;
- (unint64_t)hash;
@end

@implementation TSCH3DLabelBitmapContextInfo

+ (id)contextInfoForScene:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_propertiesForType_(v4, v5, v6, v7, v8, a1);
  if (!v10)
  {
    v10 = objc_msgSend_context(a1, v9, v11, v12, v13);
    objc_msgSend_setProperties_forType_(v4, v14, v15, v16, v17, v10, a1);
  }

  return v10;
}

+ (void)setIsPrinting:(BOOL)a3 isPDF:(BOOL)a4 hasSuppressedBackgrounds:(BOOL)a5 forScene:(id)a6
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v34 = a6;
  if (!v34)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, "+[TSCH3DLabelBitmapContextInfo setIsPrinting:isPDF:hasSuppressedBackgrounds:forScene:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelBitmapContextInfo.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 42, 0, "invalid nil value for '%{public}s'", "scene");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_contextInfoWithIsPrinting_isPDF_hasSuppressedBackgrounds_(a1, v10, v11, v12, v13, v8, v7, v6);
  objc_msgSend_setProperties_forType_(v34, v30, v31, v32, v33, v29, a1);
}

+ (TSCH3DLabelBitmapContextInfo)contextInfoWithIsPrinting:(BOOL)a3 isPDF:(BOOL)a4 hasSuppressedBackgrounds:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  hasSuppressedBackgrounds = objc_msgSend_initWithIsPrinting_isPDF_hasSuppressedBackgrounds_(v8, v9, v10, v11, v12, v7, v6, v5);

  return hasSuppressedBackgrounds;
}

- (TSCH3DLabelBitmapContextInfo)initWithIsPrinting:(BOOL)a3 isPDF:(BOOL)a4 hasSuppressedBackgrounds:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = TSCH3DLabelBitmapContextInfo;
  result = [(TSCH3DLabelBitmapContextInfo *)&v9 init];
  if (result)
  {
    result->_isPrinting = a3;
    result->_isPDF = a4;
    result->_hasSuppressedBackgrounds = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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