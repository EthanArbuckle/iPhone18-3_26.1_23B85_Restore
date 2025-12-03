@interface TSTStyleDefaultsCache
+ (id)cacheWithTableInfo:(id)info;
- (TSTStyleDefaultsCache)initWithTableInfo:(id)info;
- (id)cellStyleHandleForKey:(unint64_t)key;
- (id)textStyleHandleForKey:(unint64_t)key;
@end

@implementation TSTStyleDefaultsCache

+ (id)cacheWithTableInfo:(id)info
{
  v4 = [self alloc];
  v8 = objc_msgSend_initWithTableInfo_(v4, v5, info, v6, v7);

  return v8;
}

- (TSTStyleDefaultsCache)initWithTableInfo:(id)info
{
  v11.receiver = self;
  v11.super_class = TSTStyleDefaultsCache;
  v4 = [(TSTStyleDefaultsCache *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_tableInfo = info;
    v6 = objc_alloc_init(MEMORY[0x277D81210]);
    cellStyleHandles = v5->_cellStyleHandles;
    v5->_cellStyleHandles = v6;

    v8 = objc_alloc_init(MEMORY[0x277D81210]);
    textStyleHandles = v5->_textStyleHandles;
    v5->_textStyleHandles = v8;
  }

  return v5;
}

- (id)cellStyleHandleForKey:(unint64_t)key
{
  v11 = objc_msgSend_objectForKey_(self->_cellStyleHandles, a2, key, v3, v4);
  if (!v11)
  {
    v12 = objc_msgSend_baseTableModel(self->_tableInfo, v7, v8, v9, v10);
    v28 = 0;
    v29 = 0;
    objc_msgSend_defaultStylesForTableStyleArea_outCellStyle_outTextStyle_(v12, v13, key, &v29, &v28);
    v14 = v29;
    v15 = v28;

    v11 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v16, v14, v17, v18);
    v22 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v19, v15, v20, v21);
    objc_msgSend_setObject_forKey_(self->_cellStyleHandles, v23, v11, key, v24);
    objc_msgSend_setObject_forKey_(self->_textStyleHandles, v25, v22, key, v26);
  }

  return v11;
}

- (id)textStyleHandleForKey:(unint64_t)key
{
  v11 = objc_msgSend_objectForKey_(self->_textStyleHandles, a2, key, v3, v4);
  if (!v11)
  {
    v12 = objc_msgSend_baseTableModel(self->_tableInfo, v7, v8, v9, v10);
    v28 = 0;
    v29 = 0;
    objc_msgSend_defaultStylesForTableStyleArea_outCellStyle_outTextStyle_(v12, v13, key, &v29, &v28);
    v14 = v29;
    v15 = v28;

    v19 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v16, v14, v17, v18);
    v11 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v20, v15, v21, v22);
    objc_msgSend_setObject_forKey_(self->_cellStyleHandles, v23, v19, key, v24);
    objc_msgSend_setObject_forKey_(self->_textStyleHandles, v25, v11, key, v26);
  }

  return v11;
}

@end