@interface TSTStyleDefaultsCache
+ (id)cacheWithTableInfo:(id)a3;
- (TSTStyleDefaultsCache)initWithTableInfo:(id)a3;
- (id)cellStyleHandleForKey:(unint64_t)a3;
- (id)textStyleHandleForKey:(unint64_t)a3;
@end

@implementation TSTStyleDefaultsCache

+ (id)cacheWithTableInfo:(id)a3
{
  v4 = [a1 alloc];
  v8 = objc_msgSend_initWithTableInfo_(v4, v5, a3, v6, v7);

  return v8;
}

- (TSTStyleDefaultsCache)initWithTableInfo:(id)a3
{
  v11.receiver = self;
  v11.super_class = TSTStyleDefaultsCache;
  v4 = [(TSTStyleDefaultsCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_tableInfo = a3;
    v6 = objc_alloc_init(MEMORY[0x277D81210]);
    cellStyleHandles = v5->_cellStyleHandles;
    v5->_cellStyleHandles = v6;

    v8 = objc_alloc_init(MEMORY[0x277D81210]);
    textStyleHandles = v5->_textStyleHandles;
    v5->_textStyleHandles = v8;
  }

  return v5;
}

- (id)cellStyleHandleForKey:(unint64_t)a3
{
  v11 = objc_msgSend_objectForKey_(self->_cellStyleHandles, a2, a3, v3, v4);
  if (!v11)
  {
    v12 = objc_msgSend_baseTableModel(self->_tableInfo, v7, v8, v9, v10);
    v28 = 0;
    v29 = 0;
    objc_msgSend_defaultStylesForTableStyleArea_outCellStyle_outTextStyle_(v12, v13, a3, &v29, &v28);
    v14 = v29;
    v15 = v28;

    v11 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v16, v14, v17, v18);
    v22 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v19, v15, v20, v21);
    objc_msgSend_setObject_forKey_(self->_cellStyleHandles, v23, v11, a3, v24);
    objc_msgSend_setObject_forKey_(self->_textStyleHandles, v25, v22, a3, v26);
  }

  return v11;
}

- (id)textStyleHandleForKey:(unint64_t)a3
{
  v11 = objc_msgSend_objectForKey_(self->_textStyleHandles, a2, a3, v3, v4);
  if (!v11)
  {
    v12 = objc_msgSend_baseTableModel(self->_tableInfo, v7, v8, v9, v10);
    v28 = 0;
    v29 = 0;
    objc_msgSend_defaultStylesForTableStyleArea_outCellStyle_outTextStyle_(v12, v13, a3, &v29, &v28);
    v14 = v29;
    v15 = v28;

    v19 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v16, v14, v17, v18);
    v11 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v20, v15, v21, v22);
    objc_msgSend_setObject_forKey_(self->_cellStyleHandles, v23, v19, a3, v24);
    objc_msgSend_setObject_forKey_(self->_textStyleHandles, v25, v11, a3, v26);
  }

  return v11;
}

@end