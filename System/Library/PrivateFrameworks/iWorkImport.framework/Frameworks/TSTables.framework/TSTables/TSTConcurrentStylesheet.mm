@interface TSTConcurrentStylesheet
- (TSTConcurrentStylesheet)initWithStylesheet:(id)a3;
- (id)repairOrReplaceErrantStyle:(id)a3;
- (id)variationOfStyle:(id)a3 propertyMap:(id)a4;
@end

@implementation TSTConcurrentStylesheet

- (TSTConcurrentStylesheet)initWithStylesheet:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = TSTConcurrentStylesheet;
  v6 = [(TSTConcurrentStylesheet *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stylesheet, a3);
    v7->_repairOrReplaceLock._os_unfair_lock_opaque = 0;
    v10 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v8, 512, 512, v9);
    repairOrReplaceMap = v7->_repairOrReplaceMap;
    v7->_repairOrReplaceMap = v10;

    v7->_variationLock._os_unfair_lock_opaque = 0;
    v14 = objc_msgSend_mapTableWithKeyOptions_valueOptions_(MEMORY[0x277CCAB00], v12, 0, 512, v13);
    variationMap = v7->_variationMap;
    v7->_variationMap = v14;

    __dmb(0xBu);
  }

  return v7;
}

- (id)repairOrReplaceErrantStyle:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_repairOrReplaceLock);
  v11 = objc_msgSend_objectForKey_(self->_repairOrReplaceMap, v5, v4, v6, v7);
  if (!v11)
  {
    v11 = objc_msgSend_repairOrReplaceErrantStyle_(self->_stylesheet, v8, v4, v9, v10);
    objc_msgSend_setObject_forKey_(self->_repairOrReplaceMap, v12, v11, v4, v13);
  }

  os_unfair_lock_unlock(&self->_repairOrReplaceLock);

  return v11;
}

- (id)variationOfStyle:(id)a3 propertyMap:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [TSTConcurrentStylesheetKey alloc];
  v11 = objc_msgSend_initWithStyle_andPropertyMap_(v8, v9, v6, v7, v10);
  stylesheet = self->_stylesheet;
  v17 = objc_msgSend_stylesheet(v6, v13, v14, v15, v16);

  if (stylesheet != v17)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTConcurrentStylesheet variationOfStyle:propertyMap:]", v19, v20);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConcurrentStylesheet.mm", v24, v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v27, v22, v26, 130, 0, "stylesheet used should be same as the one owning the style");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  os_unfair_lock_lock(&self->_variationLock);
  v37 = objc_msgSend_objectForKey_(self->_variationMap, v32, v11, v33, v34);
  if (!v37)
  {
    v37 = objc_msgSend_variationOfStyle_propertyMap_(self->_stylesheet, v35, v6, v7, v36);
    objc_msgSend_setObject_forKey_(self->_variationMap, v38, v37, v11, v39);
  }

  os_unfair_lock_unlock(&self->_variationLock);

  return v37;
}

@end